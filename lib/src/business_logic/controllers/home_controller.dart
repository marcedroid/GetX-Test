import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/models/user.dart';
import 'package:getx_demo/src/business_logic/services/api_services/user_api.dart';
import 'package:getx_demo/src/business_logic/utils/constants.dart' as Constants;
import 'package:getx_demo/src/views/screens/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _isLoading = true;

  int get counter => _counter;
  List<User> get users => _users;
  bool get isLoading => _isLoading;

  void increment() {
    _counter++;
    update([Constants.HOME_COUNTER], _counter >= 5);
  }

  Future<void> fetchUsers() async {
    final users = await UserApi().getUsers(1);
    _users = users;
    _isLoading = false;
    update([Constants.HOME_USERS]);
  }

  void goToProfilePage(User user) {
    Get.to(ProfilePage(), arguments: user);
  }

  @override
  void onReady() {
    super.onReady();
    fetchUsers();
  }
}
