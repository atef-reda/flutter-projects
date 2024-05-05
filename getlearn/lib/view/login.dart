import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlearn/main.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 50),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Log In'),
            backgroundColor: Colors.purpleAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    sharedPref?.setString('role', 'user');
                    Get.toNamed('/home');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  child: const Text('Home'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    sharedPref?.setString('role', 'admin');
                    Get.toNamed('/admin');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  child: const Text('Admin'),
                ),
              ),
            ],
          )),
    );
  }
}
