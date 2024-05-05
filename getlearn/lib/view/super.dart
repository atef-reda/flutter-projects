import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      minimum: const EdgeInsets.only(top: 50),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Super'),

          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
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