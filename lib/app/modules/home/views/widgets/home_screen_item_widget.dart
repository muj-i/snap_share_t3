import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';
import 'package:snap_share_t3/app/common/widgets/custom_icon_button.dart';
import 'package:snap_share_t3/app/modules/home/controllers/home_controller.dart';
import 'package:snap_share_t3/app/modules/home/models/home_screen_item_model.dart';

import '../../../../common/widgets/custom_image_view.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/custom_text_style.dart';

// ignore: must_be_immutable
class HomeScreenItemWidget extends StatelessWidget {
  HomeScreenItemWidget(
    this.homeScreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeScreenItemModel homeScreenItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 128,
          width: 96,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: homeScreenItemModelObj.yourAvatar!.value,
                  height: 128,
                  width: 96,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(
                    8,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 4,
                    top: 4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                        height: 28,
                        width: 28,
                        padding: const EdgeInsets.all(2),
                        child: CustomImageView(
                          height: 28,
                          width: 28,
                          radius: BorderRadiusStyle.roundedBorder16,
                          imagePath: ImageConstant.imgAvatar,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Obx(() {
                        if (homeScreenItemModelObj.userName == 'You') {
                          return CustomImageView(
                            imagePath: homeScreenItemModelObj.iconAdd!.value,
                            height: 24,
                            width: 24,
                            alignment: Alignment.center,
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Obx(() {
          return Text(
            homeScreenItemModelObj.userName!.value,
            style: CustomTextStyles.labelLargePrimaryContainer,
          );
        }),
        const SizedBox(height: 3),
      ],
    );
  }
}
