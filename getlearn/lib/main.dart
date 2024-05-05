import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getlearn/view/admin.dart';
import 'package:getlearn/view/auth_middleware.dart';
import 'package:getlearn/view/home.dart';
import 'package:getlearn/view/login.dart';
import 'package:getlearn/view/super.dart';
import 'package:getlearn/view/super_middleware.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const LogIn(),
            middlewares: [AuthMiddleWare(), SuperMiddleWare()]),
        GetPage(
          name: '/home',
          page: () => const Home(),
        ),
        GetPage(
          name: '/admin',
          page: () => const Admin(),
        ),
        GetPage(
          name: '/super',
          page: () => const Super(),
        ),
      ],
    );
  }
}
