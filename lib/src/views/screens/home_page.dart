import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/controllers/home_controller.dart';
import 'package:getx_demo/src/views/widgets/home_counter_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        print('Build home');
        return Scaffold(
          appBar: AppBar(
            title: Text('GetX Demo'),
          ),
          body: Center(
            child: HomeCounterWidget(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _.increment(),
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
