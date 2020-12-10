import "package:flutter/material.dart";

class ButtonComponent extends StatelessWidget {
  final String btnLabel;
  final Color btnColor;
  final double minWidth; 
  final Function onTap;


  ButtonComponent({this.btnLabel, this.btnColor,this.minWidth,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
      child: ButtonTheme(
        minWidth: minWidth,
        height: 27,
        child: RaisedButton(
          color: btnColor,
          textColor: Colors.white,
          onPressed: onTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Text(
            btnLabel,
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
