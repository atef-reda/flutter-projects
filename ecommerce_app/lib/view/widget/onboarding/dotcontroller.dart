import 'package:ecommerce_app/controller/onboarding.dart';
import 'package:ecommerce_app/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class OnBoardingDotController extends StatelessWidget {
  const OnBoardingDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) =>Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(left: 5),
              duration: const Duration(milliseconds: 300),
              height: 10,
              width: controller.currantPage==index?30:10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.primary),
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
      ),
    );
  }
}
