import 'dart:async';

import 'package:flask/view/screen/obesitylevelscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var _timer;
  start()
  {
    _timer=Timer(const Duration(seconds: 5), call);
  }
  call()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ObistyLevelScreen()));
  }

  @override
  void initState() {
    start();
    super.initState();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor:Colors.pink,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.black12,
          systemNavigationBarColor:Colors.pink,
        ),
        elevation: 0,
      ),
      
      body: Center(

        child: Lottie.network("https://lottie.host/c995343f-3adc-44ac-8709-74864869aab6/BDhKR9XBsF.json"),
      ),
    );
  }
}