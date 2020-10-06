import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/models/user.dart';

class ProfileController extends GetxController {
  User _user;
  User get user => _user;

  @override
  void onInit() {
    super.onInit();
    _user = Get.arguments as User;
    print('${Get.arguments}');
  }
}
