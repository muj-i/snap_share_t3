import 'package:flutter/material.dart';
import 'package:snap_share_t3/app/theme/custom_text_style.dart';
import 'package:snap_share_t3/app/theme/theme_helper.dart';

class AppbarTitle extends StatelessWidget {
  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.headlineSmallLobster.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
