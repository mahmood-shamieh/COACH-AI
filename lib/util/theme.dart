import 'package:flutter/material.dart';

class MyTheme {
  static Color blackColor = const Color(0xff455054);
  static Color blueColor = const Color(0xff308695);
  static Color binkColor = const Color(0xffD45769);
  static Color yellowColor = const Color(0xffE96D45);
  static Color whiteColor = const Color(0xffffffff);
  static ThemeData lightTheme = ThemeData(
      primaryColor: blueColor,
      scaffoldBackgroundColor: blackColor,
      cardColor: const Color.fromARGB(255, 108, 124, 130),
      accentColor: yellowColor,
      shadowColor: whiteColor,
      buttonColor: binkColor,
      textTheme: TextTheme(bodyLarge: TextStyle(color: binkColor)),
      appBarTheme: AppBarTheme(
        backgroundColor: binkColor,
      ));
}
