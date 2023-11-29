import 'package:get/get.dart';

import '../controllers/profile_details_controller.dart';

class ProfileDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileDetailsController>(
      () => ProfileDetailsController(),
    );
  }
}
