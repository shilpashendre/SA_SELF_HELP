import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoader extends StatefulWidget {
  
  
  @override
  _CustomLoaderState createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/icn_loading.gif",
          height: 125.0,
          width: 125.0,
        )
      ],
    );
  }
}
