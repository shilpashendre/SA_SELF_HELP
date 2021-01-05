import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sahelp/constants/CustomException.dart';
import 'dart:io';
import 'package:xml2json/xml2json.dart';

class Utility {
  static String baseUrl = "https://selfhelpapp2.sataxi.co.za/API/";
  static String procedureApiUrl = 'GenericWeb/GetDataInXMLFromStoredProcedure';

  static var responseJson;
  static Xml2Json xml2json = new Xml2Json();

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

  static Future<dynamic> postapis(String procedureName) async {
    var responseJson;
    try {
      final response = await http.post(
        baseUrl + procedureApiUrl,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "ProcedureName": procedureName,
          "Parameters": ["@IDNumber~~7506125555085"]
        }),
      );
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  static dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        print("response.body.toString()\n");
        xml2json.parse(response.body.toString());
        var jsonString = xml2json.toParker();
        var data = jsonDecode(jsonString);

        return data;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
