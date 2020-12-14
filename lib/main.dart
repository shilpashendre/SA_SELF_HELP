import 'package:flutter/material.dart';
import 'package:sahelp/SplashScreen.dart';
import 'package:sahelp/login/Login.dart';
import 'package:sahelp/login/Register.dart';
import 'package:sahelp/navigationmenu/AppNavigation.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      SplashScreen.routeName: (context) => SplashScreen(),
      AppNavigation.routeName: (context) => AppNavigation(),
      Login.routeName: (context) => Login(),
      Register.routeName: (context) => Register(),
    },
  ));
}
