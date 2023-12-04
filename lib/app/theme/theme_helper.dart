import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/utils/pref_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.grey100,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blueGrey50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blueGrey500,
            width: 1,
          ),
          shape: RoundedRectangleBorder(),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGrey50,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          fontSize: 16,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 24,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          // color: appTheme.blueGrey300,
          fontSize: 12,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          // color: appTheme.blueGrey700,
          fontSize: 10,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 20,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 16,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 14,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF4378FF),
    primaryContainer: Color(0XFF1D2939),
    secondaryContainer: Color(0XFF6993FF),

    // Error colors
    errorContainer: Color(0XFFF03864),

    // On colors(text colors)
    onPrimary: Color(0XE5101828),
    onPrimaryContainer: Color(0XFFE1E1E1),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFB4C9FF);
  Color get blue50 => Color(0XFFDAE4FF);
  Color get blue5001 => Color(0XFFE9EFFF);

  // BlueGrey
  Color get blueGrey100 => Color(0XFFD0D5DD);
  Color get blueGrey10001 => Color(0XFFD9D9D9);
  Color get blueGrey300 => Color(0XFF98A2B3);
  Color get blueGrey50 => Color(0XFFEAECF0);
  Color get blueGrey500 => Color(0XFF667085);
  Color get blueGrey700 => Color(0XFF475467);

  // Grey
  Color get grey100 => Color(0XFFF4F5F6);
  Color get grey10001 => Color(0XFFECFDF3);
  Color get grey50 => Color(0XFFF9F9FA);

  // Indigo
  Color get indigo50 => Color(0XFFE4E8EE);

  // Red
  Color get red500 => Color(0XFFF04438);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();