import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/utils/myroutes.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple,
      // fontFamily: GoogleFonts.lato().fontFamily,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: Colors.red),
      // it changed the default activity (page) 'initial means first'
      // initialRoute: "/home",
      routes: {
        // '/' is the default activity [page] that can displays first
        MyRoutes.loginRoute:(context)=>const LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage()
      },
    );
  }
}
