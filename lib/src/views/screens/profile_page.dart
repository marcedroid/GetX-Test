import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/src/business_logic/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (_) => Text('${_.user.firstName} ${_.user.lastName}'),
        ),
      ),
    );
  }
}
