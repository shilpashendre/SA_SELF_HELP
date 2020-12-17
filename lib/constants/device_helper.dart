import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceHelper {
  static Size deviceSize;
  static MethodChannel platformChannel;

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
