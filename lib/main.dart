import 'package:flutter/material.dart';
import 'package:sahelp/SplashScreen.dart';
import 'package:sahelp/pages/PolicyDisplayTab.dart';
import 'package:sahelp/pages/login/Login.dart';
import 'package:sahelp/pages/login/Register.dart';
import 'package:sahelp/navigationmenu/AppNavigation.dart';
import 'package:sahelp/pages/survey/surveypage1.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      SplashScreen.routeName: (context) => SplashScreen(),
      AppNavigation.routeName: (context) => AppNavigation(),
      Login.routeName: (context) => Login(),
      Register.routeName: (context) => Register(),
      PolicyDisplayTab.routeName: (context) => PolicyDisplayTab(),
      SurveyPage1.routeName: (context) => SurveyPage1()
    },
  ));
}
