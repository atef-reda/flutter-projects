import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlearn/main.dart';

class AuthMiddleWare extends GetMiddleware
{
  @override
  int? get priority => 2;
  
  @override
  RouteSettings? redirect(String? route) {
    if(sharedPref?.getString('role') =='user') return const RouteSettings(name: '/home');
    if(sharedPref?.getString('role') =='admin') return const RouteSettings(name: '/admin');
    
    return super.redirect(route);
    
  }
}