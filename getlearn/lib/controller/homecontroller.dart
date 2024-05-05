import 'package:get/get.dart';
class HomeController extends GetxController{
  RxInt counter=0.obs;

  increment()
  {
    counter++;
    update();
  }

  decrement()
  {
    counter--;
    update();
  }


  
  @override
  void dispose() {
    super.dispose();
    print('Home Controller dispose');
  }


  @override
  void onClose() {
       print('Home Controller onClose');

  }

  @override
  void onInit() {
    super.onInit();
    print('Home Controller onInit');
  }

  @override
  void onReady() {
    print('Home Controller onReady');
  }
}