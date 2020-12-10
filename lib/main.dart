import 'package:flutter/material.dart';
import 'package:sahelp/SplashScreen.dart';
import 'package:sahelp/login/Login.dart';
import 'package:sahelp/login/Register.dart';
import 'package:sahelp/pages/Home.dart';
import 'package:sahelp/constants/RouteConstants.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/splash",
    routes: {
      RouteConstants.routeLogin: (context) => Login(),
      "/splash":(context)=>SplashScreen(),
      RouteConstants.routeRegister: (context) => Register(),
      RouteConstants.routeHome: (context) => Home(),
    },
  ));
}
