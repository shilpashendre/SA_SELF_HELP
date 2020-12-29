import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Utility {
  static void shareData(BuildContext context, String text, String subject) {
    final RenderBox box = context.findRenderObject();
    Share.share(text,
        subject: subject,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
