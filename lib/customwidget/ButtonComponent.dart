import "package:flutter/material.dart"; 

class ButtonComponent extends StatelessWidget {
  final String btnLabel;
  final Color btnColor;
  final Function onTap;

  ButtonComponent({this.btnLabel, this.btnColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: btnColor,
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27, vertical: 5),
            child: Text(
             btnLabel ,
              style: TextStyle( color: Colors.white,fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }
}
