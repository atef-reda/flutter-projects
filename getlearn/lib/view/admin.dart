import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlearn/main.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      minimum: const EdgeInsets.only(top: 50),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin'),

          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              sharedPref?.clear();
              Get.toNamed('/');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple) ,
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: const Text('Sign Out'),
          ),
        ),
      ),
    );
  }
}