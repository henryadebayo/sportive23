import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget buildTextField({String  label, var controller, var keyboardType, var autofill, var validator, IconButton suffixIcon, double height, bool hideText}){

  return TextFormField(
    keyboardType: keyboardType,
    autofillHints: [autofill],
    validator: validator,
    decoration: InputDecoration(
      suffix: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: const BorderSide(color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(4.0.r),
  //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 14.h,),
      hintText: label,
      hintStyle: TextStyle(
        fontSize: 15.sp
      ),
    ),

  );
}


Widget buildPasswordTextField({String  label, var controller, var keyboardType, var autofill, var validator, IconButton suffixIcon, double height, bool hideText}){

  return TextFormField(

    keyboardType: keyboardType,
    autofillHints: [autofill],
    validator: validator,
    obscureText:hideText,
    decoration: InputDecoration(
      suffix: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: const BorderSide(color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0.r),
        //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 5.0.h,),
      hintText: label,
      hintStyle: TextStyle(
          fontSize: 15.sp
      ),
    ),

  );
}

