import "package:flutter/material.dart";
import 'package:sahelp/pages/tabs/BankDetailsTab.dart';

class BankDetails extends StatefulWidget {
  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return   TabBarView(children: [
          BankDetailsTab(),
        ]);
       
    
  }
}
