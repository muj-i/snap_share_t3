import 'package:get/get.dart';

import '../controllers/bottom_nav_layout_controller.dart';

class BottomNavLayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavLayoutController>(
      () => BottomNavLayoutController(),
    );
  }
}
