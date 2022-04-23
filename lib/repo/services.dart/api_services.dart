import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sportive23/repo/constants/constants.dart';
import 'package:sportive23/repo/model/user_model.dart';




class AuthServices{


  final UserModel userModel = UserModel();


  Future<dynamic> SignUp(String email, String password, String firstName, String lastName)async{

    try{
      var response = await http.post(Uri.parse('$baseUrl/signup')
      ,body: {
        "email": email,
            "password": password,
            "firstname":firstName,
            "lastname":lastName,
          });
      if(response.statusCode == 200){
        print("signed up successfully");
      }else{
        print("error signing up and response status code is ${response.statusCode}");
      }
      return response;
    }catch(e){
      print(e);
    }

  }



  Future<dynamic> SignIn(String email, String password)async{
    try{
      var response = await http.post(Uri.parse('$baseUrl/login'),
          body: {
        "email": email,
        "password": password,
      });
      if(response.statusCode == 200){
        print("signed in successfully");
      }else{
        print("error signing In and response status code is ${response.statusCode}");
      }
      return response.body.toString();
    }catch(e){
     print(e);
    }
  }
}