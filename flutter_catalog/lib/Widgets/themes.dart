import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: darkBulishColor),
      cardColor: Colors.white,
      canvasColor: creamColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkMoodColor,
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightBulishColor),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white));

  // Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkMoodColor = Vx.gray900;
  static Color darkBulishColor = const Color(0xff403b58);
  static Color lightBulishColor = Vx.indigo500;
}
