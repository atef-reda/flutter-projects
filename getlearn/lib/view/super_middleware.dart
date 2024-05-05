


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuperMiddleWare extends GetMiddleware
{
  @override
  int? get priority => 1;
  var x=false;
  @override
  RouteSettings? redirect(String? route) {
    
    if(x==true) return const RouteSettings(name: 'super');
    return super.redirect(route);
    
  }
}