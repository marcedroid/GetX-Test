import 'package:flutter/material.dart';
import 'package:getx_demo/src/views/screens/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX Demo',
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
