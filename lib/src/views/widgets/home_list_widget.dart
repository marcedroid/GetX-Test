import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/controllers/home_controller.dart';
import 'package:getx_demo/src/business_logic/utils/constants.dart' as Constants;

class HomeListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: Constants.HOME_USERS,
      builder: (_) {
        if (_.isLoading) {
          return Center(
            child: LinearProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: _.users.length,
          itemBuilder: (context, index) {
            final user = _.users[index];
            return ListTile(
              title: Text('${user.firstName} ${user.lastName}'),
              subtitle: Text(user.email),
            );
          },
        );
      },
    );
  }
}
