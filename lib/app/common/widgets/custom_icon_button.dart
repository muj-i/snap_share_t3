import 'package:flutter/material.dart';
import 'package:snap_share_t3/app/theme/theme_helper.dart';

class CustomIconButton extends StatelessWidget {
  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1,
                    )),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton]
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
        borderRadius: BorderRadius.circular(16),
      );

  static BoxDecoration get outlinePrimaryTL20 => BoxDecoration(
      color: appTheme.whiteA700,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: theme.colorScheme.primary,
        width: 1,
      ));

  static BoxDecoration get fillGrey => BoxDecoration(
        color: appTheme.grey10001,
        borderRadius: BorderRadius.circular(25),
      );
}
