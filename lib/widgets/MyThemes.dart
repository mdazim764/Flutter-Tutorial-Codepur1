import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    // textTheme: GoogleFonts.latoTextTheme(), // Use Google Fonts for text theme
    fontFamily: GoogleFonts.poppins().fontFamily, // Set font family for the theme
    colorScheme: ColorScheme.light(
      primary: darkBluishColor
    ),
    cardColor: Colors.white,
    canvasColor: creamColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: darkBluishColor, // Consistent FAB color
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme), // Override text theme with Google Fonts
    fontFamily: GoogleFonts.poppins().fontFamily, // Set font family for the theme
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.dark(
      primary: lightBluishColor,
    ),
    cardColor: Colors.black,
    canvasColor: darkColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightBluishColor, // Consistent FAB color
      ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );

//   colors
static Color creamColor=const Color(0xfff5f5f5);
static Color darkColor=Vx.gray900;
static Color darkBluishColor=const Color(0xff48406b);
static Color lightBluishColor=Vx.indigo400;
}
