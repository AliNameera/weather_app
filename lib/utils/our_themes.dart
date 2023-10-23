import 'package:weather_app/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomThemes {
  static final lightTheme = ThemeData(
    cardColor: Colors.white,
    fontFamily: "poppins",
    scaffoldBackgroundColor: const Color.fromARGB(255, 26, 181, 243),
    primaryColor: Vx.gray800,
    iconTheme: const IconThemeData(
      color: Vx.gray600,
    ),
    appBarTheme:  const AppBarTheme(
      backgroundColor: Colors.transparent, // Set your desired background color for light mode
      foregroundColor: Colors.black, // Set your desired text color for light mode
    ),
  );

  static final darkTheme = ThemeData(
    cardColor: bgColor.withOpacity(0.6),
    fontFamily: "poppins",
    scaffoldBackgroundColor: Vx.gray800,
    primaryColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent, // Set your desired background color for dark mode
      foregroundColor: Colors.white, // Set your desired text color for dark mode
    ),
    canvasColor: Colors.transparent, // Use this to make modal dialogs transparent
    backgroundColor: const Color.fromARGB(255, 40, 40, 40), // Dark mode background color
    dialogBackgroundColor: const Color.fromARGB(255, 40, 40, 40), // Dark mode dialog background color
  );
}
