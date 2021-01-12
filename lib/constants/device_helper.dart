import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceHelper {
  static Size deviceSize;
  static MethodChannel platformChannel;
  static double fullHeight = deviceSize.height;
  static double fullWidth = deviceSize.width;
  static double dh10 = deviceSize.height * 0.01;
  static double dheight_20 = deviceSize.height * 0.02;
  static double dh30 = deviceSize.height * 0.03;
  static double dh5 = deviceSize.height * 0.005;
  static double dh15 = deviceSize.height * 0.015;
  static double dh76 = deviceSize.height * 0.085;
  static double dh7 = deviceSize.height * 0.2;
  static double dw10 = deviceSize.height * 0.2;
  static double dw7 = deviceSize.height * 0.2;
  static double loginContainerWidth = deviceSize.width / 1.1;

  static void init(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    platformChannel = MethodChannel('com.example.bimsiteviewer/platform');
  }

  static String concateValues(String firstValue, String secondValue) {
    String value = "";
    if (firstValue != null && firstValue.isNotEmpty) value += firstValue + " ";
    if (secondValue != null && secondValue.isNotEmpty) value += secondValue;
    return value;
  }


}
