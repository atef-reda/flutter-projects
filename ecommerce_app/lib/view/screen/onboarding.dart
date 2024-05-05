import 'package:ecommerce_app/controller/onboarding.dart';
import 'package:ecommerce_app/view/widget/onboarding/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/onboarding/button.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child:OnBoardingSlider()
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                 OnBoardingDotController(),
                  Spacer(
                    flex: 1,
                  ),
                 OnBoardingButton(),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
