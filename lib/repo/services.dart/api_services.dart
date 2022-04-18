import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sportive23/repo/constants/constants.dart';
import 'package:sportive23/repo/model/user_model.dart';




class AuthServices{


  final UserModel _userModel = UserModel();


  Future<dynamic> SignUp(String email, String password, String firstName, String lastName)async{

    try{
      var response = await http.post(Uri.parse('$baseUrl/signup')
      ,body: {
        "email": _userModel.email,
            "password": _userModel.password,
            "firstname":_userModel.firstName,
            "lastname":_userModel.lastName,
          });
      if(response.statusCode == 200){
        print("signed up sucessfully");
      }else{
        print("error");
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
        print("signed in sucessfully");
      }else{
        print("error");
      }
      return response.body.toString();
    }catch(e){
     print(e);
    }
  }
}