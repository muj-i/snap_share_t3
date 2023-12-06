import 'package:flutter/material.dart';
import 'package:snap_share_t3/app/theme/theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );
  static ButtonStyle get fillSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              30,
            ),
            topRight: Radius.circular(
              30,
            ),
            bottomLeft: Radius.circular(
              30,
            ),
          ),
        ),
      );
  static ButtonStyle get fillSecondaryContainerTL4 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );

  // Radius button style
  static ButtonStyle get radiusTL4 => ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
