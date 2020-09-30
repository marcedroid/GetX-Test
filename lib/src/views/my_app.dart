import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/src/views/screens/splash_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: ThemeData.light(),
      home: SplashPage(),
    );
  }
}
