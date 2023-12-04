import 'package:flutter/cupertino.dart';
import 'package:snap_share_t3/app/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueGrey => BoxDecoration(
        color: appTheme.blueGrey100,
      );
  static BoxDecoration get fillGrey => BoxDecoration(
        color: appTheme.grey100,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGrey => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGrey50,
            width: 1,
          ),
        ),
      );
  static BoxDecoration get outlineBluegrey50 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.blueGrey50,
            width: 1,
          ),
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8,
      );
}

/// For Flutter SDK Version 3.7.2 or greater.
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

/// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
