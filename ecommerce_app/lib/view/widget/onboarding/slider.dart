import 'package:ecommerce_app/controller/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasourse/static/static.dart';

class OnBoardingSlider extends GetView<OnBoardingControllerImp> {
  const OnBoardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) => controller.onPageChanged(value),
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            onBoardingList[i].image!,
            height: 250,
            width: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            onBoardingList[i].body!,
            textAlign: TextAlign.center,
            style:
                const TextStyle(height: 2, fontSize: 20, color: AppColor.grey),
          ),
        ],
      ),
    );
  }
}
