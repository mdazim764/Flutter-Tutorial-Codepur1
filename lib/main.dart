import 'package:flutter/material.dart';
import 'package:untitled2/core/store.dart';
import 'package:untitled2/pages/cart_page.dart';
import 'package:untitled2/utils/myroutes.dart';
import 'package:untitled2/widgets/MyThemes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(VxState(
      store: MyStore(),
      child: MyApp()));
}



class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      // it changed the default activity (page) 'initial means first'
      initialRoute: "/home",
      routes: {
        // '/' is the default activity [page] that can displays first
        MyRoutes.loginRoute:(context)=>const LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.cartRoute:(context)=>CartPage()
      },
    );
  }
}
