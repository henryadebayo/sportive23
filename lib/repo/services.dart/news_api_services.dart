
import 'package:flutter/material.dart';
import 'package:sportive23/repo/model/news_model.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

class NewsServices {

  String responseBody;



  Future<String> getNews() async {
    try {
      http.Response response = await http.get(Uri.parse("https://sportive-23.herokuapp.com/api/v1/news/all"),
          headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Credentials': 'true',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Methods':
            'GET,PUT,POST,DELETE'
          }
      );
      print(response.body as String);
      return response.body;
    } catch (e) {
  print( "this is the error ${e.toString()}");
    }
  }
}
