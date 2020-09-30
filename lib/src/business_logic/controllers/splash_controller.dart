import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/src/views/screens/home_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print('Same as initState()');
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () => Get.off(HomePage()));
  }

  @override
  void onClose() {
    print('Same as dispose()');
    super.onClose();
  }
}
