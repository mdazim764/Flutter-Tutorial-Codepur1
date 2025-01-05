import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    // textTheme: GoogleFonts.latoTextTheme(), // Use Google Fonts for text theme
    fontFamily: GoogleFonts.poppins().fontFamily, // Set font family for the theme
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme), // Override text theme with Google Fonts
    fontFamily: GoogleFonts.lato().fontFamily, // Set font family for the theme
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );

//   colors
static Color creamColor=const Color(0xfffaf3ec);
static Color darkBluishColor=const Color(0xff48406b);
}
