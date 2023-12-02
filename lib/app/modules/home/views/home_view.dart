import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';
import 'package:snap_share_t3/app/common/widgets/appbar/appbar_trailing_icon_button.dart';

import '../../../common/widgets/appbar/appbar_leading_image.dart';
import '../../../common/widgets/appbar/appbar_title.dart';
import '../../../common/widgets/appbar/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildAppbar() {
  return CustomAppBar(
    centerTitle: true,
    leadingWidth: 48,
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgAvatar,
      margin: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
      radius: BorderRadius.circular(16),
    ),
    title: AppbarTitle(
      text: 'SociaLive',
    ),
    actions: [
      AppbarTrailingIconButton(
        color: Colors.red,
        imagePath: IconConstant.iconNotification,
        margin: const EdgeInsets.only(left: 16, top: 6, right: 6),
      ),
    ],
  );
}
