import 'package:ecommerce_app/controller/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class OnBoardingButton extends GetView<OnBoardingControllerImp> {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.next();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.primary),
          padding: MaterialStateProperty.all(const EdgeInsets.only(
              bottom: 10, top: 10, left: 100, right: 100))),
      child: const Text(
        'Continue',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
