import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaundryColors {
  static const primaryColor = Color(0xff01528A);
  static const white = Colors.white;
  static const black = Colors.black;
  static const grey = Color(0xffB6B4B4);
}

final _outlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  borderSide: const BorderSide(
    color: LaundryColors.grey,
    width: 0.5,
  ),
);

final lightTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: LaundryColors.primaryColor,
     
    )),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(15),
      border: _outlineBorder,
      enabledBorder: _outlineBorder,
      focusedBorder: _outlineBorder,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: LaundryColors.black,
      displayColor: LaundryColors.black,
    ));
