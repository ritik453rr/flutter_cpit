import 'package:cpit/global.dart';
import 'package:get/state_manager.dart';

/// Controls navigation state for the dashboard bottom navigation bar.
class DashboardController extends GetxController {
  var currentIndex = 0.obs;

  void onTapNav(int index) {
    Global.hapticFeedback();
    currentIndex.value = index;
  }
}
