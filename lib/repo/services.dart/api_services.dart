import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sportive23/repo/constants/constants.dart';




class AuthServices{



  Future<dynamic> SignUp(String email, String password)async{

    try{
      var response = http.post(Uri.parse('$baseUrl/signup')
      ,body: {
        "email": email,
            "password": password,
          });
      return response;
    }catch(e){
    }

  }



  Future<dynamic> SignIn(String email, String password){
    try{
      var response = http.post(Uri.parse('$baseUrl/signIn'),body: {
        "email": email,
        "password": password,
      });
      return null;
    }catch(e){
     print(e);
    }
  }
}