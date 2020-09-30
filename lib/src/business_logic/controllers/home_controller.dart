import 'package:get/state_manager.dart';
import 'package:getx_demo/src/business_logic/utils/constants.dart' as Constants;

class HomeController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    update([Constants.HOME_COUNTER], _counter >= 5);
  }
}
