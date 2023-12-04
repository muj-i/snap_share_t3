import 'package:flutter/material.dart';
import 'package:snap_share_t3/app/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumBluegrey300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGrey300,
      );
  static get bodyMediumBluegrey700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGrey700,
      );
  static get bodyMediumGrey50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.grey50,
      );
  static get bodyMediumInterBluegrey300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGrey300,
      );
  static get bodyMediumInterBluegrey500 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGrey500,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallBluegrey100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey100,
      );
  static get bodySmallBluegrey100_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey100,
      );
  static get bodySmallBluegrey300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey300,
      );
  static get bodySmallBluegrey700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey700,
      );
  static get bodySmallBluegrey700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey700,
      );
  static get bodySmallBluegrey700_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGrey700,
      );
  static get bodySmallInterBluegrey700 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGrey700,
      );
  // Headline style
  static get headlineSmallLobster => theme.textTheme.headlineSmall!.lobster;
  static get headlineSmallLobsterWhiteA700 =>
      theme.textTheme.headlineSmall!.lobster.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeGrey50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.grey50,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimaryContainer_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumGrey50 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.grey50,
      );
  // Title text style
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18,
      );
  static get titleSmallBlue100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue100,
      );
  static get titleSmallBluegrey300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGrey300,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter;
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRed500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get lobster {
    return copyWith(
      fontFamily: 'Lobster',
    );
  }

  TextStyle get satoshi {
    return copyWith(
      fontFamily: 'Satoshi',
    );
  }
}
