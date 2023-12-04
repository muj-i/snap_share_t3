import 'package:flutter/material.dart';

import '../custom_image_view.dart';

class AppbarLeadingImage extends StatelessWidget {
  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  BorderRadius? radius;

  AppbarLeadingImage(
      {Key? key, this.imagePath, this.margin, this.onTap, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          radius: radius ?? BorderRadius.zero,
          imagePath: imagePath,
          height: 32,
          width: 32,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
