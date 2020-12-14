import 'package:flutter/material.dart';
import 'package:sahelp/SplashScreen.dart';
import 'package:sahelp/login/Login.dart';
import 'package:sahelp/login/Register.dart';
import 'package:sahelp/navigationmenu/DrawerExample.dart';
import 'package:sahelp/pages/DealDetails.dart';
import 'package:sahelp/pages/Home.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      SplashScreen.routeName: (context) => SplashScreen(),
      "/drawer": (context) => DrawerExample(),
      Login.routeName: (context) => Login(),
      Register.routeName: (context) => Register(),
      Home.routeName: (context) => Home(),
      DealDetails.routeName: (context) => DealDetails(),
    },
  ));
}
