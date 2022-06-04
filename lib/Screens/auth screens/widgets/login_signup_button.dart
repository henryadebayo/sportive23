import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget buildCustomLoginButton(){

  String buttonLable;
  double buttonHorizontalPadding;
  double buttonVerticalPadding;
  Color ButtonBackgroundColors;
  Color ButtonForegroundColors;


  return SizedBox(
    width: double.infinity,
    child:
    TextButton(
      onPressed: (){

      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ButtonBackgroundColors),
        foregroundColor: MaterialStateProperty.all(ButtonForegroundColors),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: buttonVerticalPadding.h , horizontal: buttonHorizontalPadding.w)
        ),
      ),
      child: Text(buttonLable),
    ),
  );

}