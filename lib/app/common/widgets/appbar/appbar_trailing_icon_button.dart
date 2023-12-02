import 'package:flutter/material.dart';
import 'package:snap_share_t3/app/common/utils/image_constant.dart';
import 'package:snap_share_t3/app/common/widgets/custom_image_view.dart';

import '../custom_icon_button.dart';

class AppbarTrailingIconButton extends StatelessWidget {
  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  Color? color;
  AppbarTrailingIconButton(
      {Key? key, this.imagePath, this.margin, this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32,
          width: 32,
          decoration: IconButtonStyleHelper.fillBlue,
          child: CustomImageView(
            color: color,
            imagePath: IconConstant.iconNotification,
          ),
        ),
      ),
    );
  }
}
