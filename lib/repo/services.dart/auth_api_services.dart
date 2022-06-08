import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sportive23/repo/constants/constants.dart';
import 'package:sportive23/repo/model/user_model.dart';




class AuthServices{


  final UserModel userModel = UserModel();
  String responseBody;
  String responseBody2;


  Future<dynamic> signUp(String email, String password, String firstName, String lastName)async{

    try{

      final Map<String, dynamic> userData = {
        "email": email,
        "password": password,
        "firstName":firstName,
        "lastName":lastName,
      };
     http.Response response = await http.post(Uri.parse("https://sportive-23.herokuapp.com/api/v1/auth/signup"),

       headers: {
         HttpHeaders.contentTypeHeader: "application/json"
       },
          body: json.encode(userData),
      );
     print(response.body as String);

      if(response.statusCode == 200){
        print("signed up successfully");
        print("THis is Sign up response.body ${response.body}");
        return jsonDecode(response.body);
      }else{
        print("error signing up and response status code is ${response.statusCode}");
        print (json.encode(userData));
      }
      return jsonDecode(response.body);
    }catch(e){
      print(e);
    }

  }



  Future<UserModel> signIn(String email, String password)async{
    try{
      final Map<String, dynamic> userData = {
        "email": email,
        "password": password,
      };
      http.Response response = await http.post(Uri.parse('$baseUrl/login'),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json"
        },
        body: json.encode(userData),
      );
    //   switch (response.statusCode) {
    //     case 200:
    //       _apiResponse.Data = User.fromJson(json.decode(response.body));
    //       break;
    //     case 401:
    //       _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
    //       break;
    //     default:
    //       _apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
    //       break;
    //   }
    // } on SocketException {
    //   _apiResponse.ApiError = ApiError(error: "Server error. Please retry");
    // }
      print(response.body);
      var res = jsonDecode(response.body);
      if(response.statusCode == 200){

        // print("signed in successfully");
        // print("THis is Sign up response.body ${response.body}");
        final res = jsonDecode(response.body);
        final user = UserModel.fromJson(res["data"]["user"]);
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('user', json.encode(user.toJson()));
        return user;
      }else{


        print("error signing In and response status code is ${response.statusCode}");
        // print(json.encode(userData));
      }
      return res["message"];
    }catch(e){
     print(e);
    }
  }

  Future<UserModel> getLoggedInUserData()async{
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.get('user');
    if(userJson == null){
      return null;
    }else{
      return UserModel.fromJson(json.decode(userJson));
    }

  }

  Future<void> signOut()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
  }
}