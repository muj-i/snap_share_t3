import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';
import 'package:snap_share_t3/app/common/utils/utils.dart';
import 'package:snap_share_t3/app/common/widgets/appbar/appbar_trailing_icon_button.dart';
import 'package:snap_share_t3/app/modules/home/models/home_screen_item_model.dart';
import 'package:snap_share_t3/app/modules/home/views/widgets/home_screen_item_widget.dart';
import 'package:snap_share_t3/app/theme/app_decoration.dart';

import '../../../common/widgets/appbar/appbar_leading_image.dart';
import '../../../common/widgets/appbar/appbar_title.dart';
import '../../../common/widgets/appbar/custom_app_bar.dart';
import '../../../common/widgets/custom_elevated_button.dart';
import '../../../common/widgets/custom_icon_button.dart';
import '../../../common/widgets/custom_image_view.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildStoryList(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return buildPost();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Post Card
  Widget buildPost() {
    return Container(
      // width: mediaQueryData.size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildFrame(
                userName: 'Taslim',
                userUsername: '@taslim',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomImageView(
                imagePath: ImageConstant.imgRectangle1781,
                height: 327,
                width: 327,
                radius: BorderRadiusStyle.roundedBorder8),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildFrame2(),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
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

  /// Appbar
  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      centerTitle: true,
      leadingWidth: 48,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAvatar,
        margin: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
        radius: BorderRadiusStyle.roundedBorder16,
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

  Widget _buildFrame2() {
    return Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: IconConstant.iconLoveFill, height: 24, width: 24),
          CustomElevatedButton(
              height: 24,
              width: 172,
              text: '20 Comments',
              margin: const EdgeInsets.only(left: 8),
              leftIcon: Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: CustomImageView(
                      imagePath: IconConstant.iconComment,
                      height: 24,
                      width: 24)),
              buttonStyle: CustomButtonStyles.none,
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
              onPressed: () {
                // onTapComments();
              }),
          const Spacer(),
          CustomImageView(
              imagePath: IconConstant.iconBookmark, height: 24, width: 24)
        ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String userName,
    required String userUsername,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomIconButton(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(4),
          decoration: IconButtonStyleHelper.outlinePrimaryTL20,
          child: CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            fit: BoxFit.cover,
            height: 32,
            width: 32,
            radius: BorderRadiusStyle.roundedBorder16,
          )),
      Padding(
          padding: const EdgeInsets.only(left: 12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(userName,
                style: theme.textTheme.titleMedium!
                    .copyWith(color: theme.colorScheme.primaryContainer)),
            Text(userUsername,
                style: CustomTextStyles.bodySmallBluegrey700_1
                    .copyWith(color: appTheme.blueGrey700))
          ])),
      const Spacer(),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: CustomIconButton(
              height: 32,
              width: 32,
              padding: const EdgeInsets.all(4),
              decoration: IconButtonStyleHelper.fillBlue,
              child: CustomImageView(
                imagePath: IconConstant.iconNotification,
              )))
    ]);
  }
}
