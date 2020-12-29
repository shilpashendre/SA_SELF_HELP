import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Utility {
  
// to show specific length of string
  static String displayStr(String value) {
    if (value.length != 0 && value.length < 23) {
      return value;
    } else {
      return value.substring(0, 23) + "...";
    }
  }

  //  share data through social media
  static void shareData(BuildContext context, String text, String subject) {
    final RenderBox box = context.findRenderObject();
    Share.share(text,
        subject: subject,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
