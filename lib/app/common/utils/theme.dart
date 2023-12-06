

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {

  static const lightThemeFont = "Poppins",
      darkThemeFont = "Poppins";


  static final lightTheme = ThemeData(
    primaryColor: lightThemeColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: white,
    useMaterial3: true,
    fontFamily: lightThemeFont,


    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: white,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: black,
        fontSize: 24,
      ),
      iconTheme: IconThemeData(color: lightThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: lightThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: lightTextTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    inputDecorationTheme: lightInputDecorationTheme,
  );


  static final darkTheme = ThemeData(
    primaryColor: darkThemeColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: black,
    useMaterial3: true,
    fontFamily: darkThemeFont,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: black,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: white,
        fontSize: 24, //20
      ),
      iconTheme: IconThemeData(color: darkThemeColor),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: darkThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme:  darkTextTheme,
    elevatedButtonTheme: darkElevatedButtonTheme,
    inputDecorationTheme: darkInputDecorationTheme,
  );

  // colors
  static Color lightThemeColor = Colors.cyan,
      white = Colors.white,
      black = Colors.black,

      darkThemeColor = Colors.yellow;


  static TextTheme lightTextTheme = TextTheme(
    headlineLarge:  const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium:  const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall:  const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),

  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge:  const TextStyle().copyWith(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium:  const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall:  const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),

  );

  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      )
    );

  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
  );

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
    border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(width: 2, color: Colors.blue),),
    enabledBorder: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(width: 2, color: Colors.blue),),
    focusedBorder: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(width: 2, color: Colors.greenAccent),),
  );


  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
    border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(width: 2, color: Colors.blue),),
    enabledBorder: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(width: 2, color: Colors.blue),),
    focusedBorder: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(width: 2, color: Colors.greenAccent),),
  );
}