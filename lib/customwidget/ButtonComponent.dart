import "package:flutter/material.dart";

class ButtonComponent extends StatelessWidget {
  final String btnLabel;
  final Color btnColor;

  ButtonComponent({this.btnLabel, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ButtonTheme(
        minWidth: 130,
        child: RaisedButton(
          color: btnColor,
          textColor: Colors.white,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          child: Text(
            btnLabel,
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
