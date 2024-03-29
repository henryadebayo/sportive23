import 'dart:convert';
import 'package:sportive23/repo/model/league_model.dart';
import 'package:http/http.dart' as http;
import '../constants/constants.dart';
import '../model/all_fixtures_model.dart';

Future<List<JustLeague>> getAllLeagues()async {
try{
  http.Response response = await http.get(Uri.parse("$baseUrl/sports/leagues/all"),
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Allow-Methods':
        'GET,PUT,POST,DELETE'
      }
  );
  List<JustLeague> leaguePayLoad = [];
  var data = jsonDecode(response.body);

  if( response.statusCode == 200) {
    for (int i = 0; i < data["data"]["leagues"].length; i++) {
      JustLeague payLoad = JustLeague.fromJson(data["data"]["news"][i]);
      leaguePayLoad.add(payLoad);
    }
    print("this is League payload ::: $leaguePayLoad");
    return leaguePayLoad;
  }else{
    leaguePayLoad = [];
  }

}catch(e){
  print(e.toString());

}


//<------------------------- GET ALL FIXTURES METHOD -------------------------->

Future<dynamic> getAllFixtures()async {
try{
  http.Response response = await http.get(Uri.parse("$baseUrl/sports/teams/all"),
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Allow-Methods':
        'GET,PUT,POST,DELETE'
      }
  );
  List<JustAllFixturesModel> allFixturesPayload = [];
  var data = jsonDecode(response.body);
  if(response.statusCode == 200 ){
    for(int i = 0; i < data["data"]["teams"].lenght; i++){
      JustAllFixturesModel payLoad = JustAllFixturesModel.fromJson(data["data"]["teams"][i]);
      allFixturesPayload.add(payLoad);
    }
    return allFixturesPayload;
  }else{
    allFixturesPayload = [];
  }
}catch(e){}

}


//<------------------------- GET ALL FIXTURES METHOD -------------------------->


}