import 'package:get/get.dart';

import '../controllers/create_post_controller.dart';

class CreatePostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreatePostController>(
      () => CreatePostController(),
    );
  }
}
