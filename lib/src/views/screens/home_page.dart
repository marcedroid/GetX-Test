import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/controllers/home_controller.dart';
import 'package:getx_demo/src/business_logic/utils/constants.dart' as Constants;

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
            child: GetBuilder<HomeController>(
              id: Constants.HOME_COUNTER,
              builder: (_) => Text('${_.counter}'),
            ),
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
