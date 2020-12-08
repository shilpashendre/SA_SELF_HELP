import "package:flutter/material.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                },
                child: Text("Go to register"),
              )
            ]),
      ),
    ));
  }
}
