import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('GetX Demo'),
        ),
        body: Center(
          child: Text('${_.counter}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _.increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
