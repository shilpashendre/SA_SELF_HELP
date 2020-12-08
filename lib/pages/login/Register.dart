import "package:flutter/material.dart";

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Text("Go to home"),
              )
            ]),
      ),
    ));
  }
}
