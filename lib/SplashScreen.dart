import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/login/Login.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String versionName = 'V1.0';
  final splashDelay = 3;

  @override
  void initState() {
    super.initState();
    
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    DeviceHelper.init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/images/splash.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
