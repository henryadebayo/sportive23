import 'dart:convert';
import 'package:sportive23/repo/model/news_model.dart';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';

class NewsServices {

  Future<List<JustNewsModel>> getNews() async {

    try {
      http.Response response = await http.get(Uri.parse("$baseUrl/news/all"),
          headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Credentials': 'true',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Methods':
            'GET,PUT,POST,DELETE'
          }
      );
      var status = response.statusCode;
      List<JustNewsModel> newsPayLoad = [];
      var data = jsonDecode(response.body);

      print("this is data ::: ${data["data"]["news"]}");

      if( response.statusCode == 200) {
        for(int i= 0; i< data["data"]["news"].length; i++){
          JustNewsModel payLoad = JustNewsModel.fromJson(data["data"]["news"][i]);
          newsPayLoad.add(payLoad);
        }
        // for (var payLoad in data["data"]["news"]){
        //   JustNewsModel _justNewsModel = JustNewsModel.fromJson(payLoad);
        //   newsPayLoad.add(payLoad);
        // }
        print("this is payload ::: $newsPayLoad");
        return newsPayLoad;
      }else{
        newsPayLoad = [];
      }
    } catch (e) {
  print( "this is the error : ${e.toString()}");
    }
  }
}
