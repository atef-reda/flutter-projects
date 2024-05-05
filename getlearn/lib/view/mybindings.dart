import 'package:get/get.dart';
import 'package:getlearn/controller/homecontroller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(),permanent: true);
  }

}