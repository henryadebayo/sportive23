import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sportive23/repo/constants/constants.dart';
import 'package:sportive23/repo/model/user_model.dart';




class AuthServices{


  UserModel _userModel = UserModel();


  Future<dynamic> SignUp(String email, String password)async{

    try{
      var response = http.post(Uri.parse('$baseUrl/signup')
      ,body: {
        "email": _userModel.email,
            "password": _userModel.password,
            "firstname":_userModel.firstName,
            "lastname":_userModel.lastName,
          });
      return response;
    }catch(e){
      print(e);
    }

  }



  Future<dynamic> SignIn(String email, String password){
    try{
      var response = http.post(Uri.parse('$baseUrl/login'),body: {
        "email": email,
        "password": password,
      });
      return null;
    }catch(e){
     print(e);
    }
  }
}