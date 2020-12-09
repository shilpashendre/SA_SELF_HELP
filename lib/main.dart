import 'package:flutter/material.dart';
import 'package:sahelp/pages/login/Login.dart';
import 'package:sahelp/pages/login/Register.dart';
import 'package:sahelp/pages/navigationmenu/Home.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: "/home",
    routes: {
      "/": (context) => Login(),
      "/register": (context) => Register(),
      "/home": (context) => Home(),
    },
  ));
}
