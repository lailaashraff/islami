import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);
  static double counterWidth = 69;
  static double counterHeight = 81;
  static double duaWidth = 137;
  static double duaHeight = 51;

  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blackColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      selectedIconTheme: IconThemeData(size: 30),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: blackColor, fontSize: 35, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(
          color: blackColor, fontSize: 25, fontWeight: FontWeight.w400),
    ),
  );
}
