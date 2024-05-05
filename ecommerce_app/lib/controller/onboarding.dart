import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/data/datasourse/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  var currantPage = 0;
  @override
  next() {
    currantPage++;
    if(currantPage>(onBoardingList.length-1))
    {
      Get.offAllNamed(AppRoutes.login);
    }else
    {
   pageController.animateToPage(currantPage,
        duration: const Duration(microseconds: 300), curve: Curves.bounceInOut);
  
    }
 }

  @override
  onPageChanged(int index) {
    currantPage = index;
    update();
  }
  @override
  void onInit() {
    super.onInit();
    pageController=PageController();
    }
}
