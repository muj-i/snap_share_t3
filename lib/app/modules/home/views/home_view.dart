import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';
import 'package:snap_share_t3/app/common/widgets/appbar/appbar_trailing_icon_button.dart';
import 'package:snap_share_t3/app/modules/home/models/home_screen_item_model.dart';
import 'package:snap_share_t3/app/modules/home/views/widgets/home_screen_item_widget.dart';

import '../../../common/widgets/appbar/appbar_leading_image.dart';
import '../../../common/widgets/appbar/appbar_title.dart';
import '../../../common/widgets/appbar/custom_app_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppbar(),
        body: Column(
          children: [
            _buildStoryList(),
          ],
        ));
  }

  /// Story List
  Widget _buildStoryList() {
    return Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SizedBox(
                  height: 154,
                  child: Obx(
                    () => ListView.separated(
                        padding: const EdgeInsets.only(left: 16),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 8);
                        },
                        itemCount: controller.homeScreenModelObj.value
                            .homeScreenItemList.value.length,
                        itemBuilder: (context, index) {
                          HomeScreenItemModel model = controller
                              .homeScreenModelObj
                              .value
                              .homeScreenItemList
                              .value[index];
                          return HomeScreenItemWidget(model);
                        }),
                  ),
                ),
              ),
            ]));
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
          onTap: () {},
          imagePath: IconConstant.iconNotification,
          // color: Colors.red,
          margin: const EdgeInsets.only(left: 16, top: 6, right: 6),
        ),
      ],
    );
  }
}
