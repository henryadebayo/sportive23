import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatelessWidget {
  String  label;
  var controller;
  var keyboardType;
  var autofill;
  FormFieldValidator validator;
      IconButton suffixIcon;
  double height;
      bool hideText;
  final ValueChanged<String> onChanged;
   CustomTextForm({Key key, this.onChanged, this.controller,
     this.label,
     this.autofill,
     this.height,
   this.suffixIcon,
     this.hideText,
     this.keyboardType,
     this.validator,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autofillHints: [autofill],
      validator: validator,
      onChanged: onChanged,
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
}

class CustomPasswordTextField extends StatelessWidget {
  final String  label;
  var controller;
  var keyboardType;
  var autofill;
  final FormFieldValidator validator;
  final IconButton suffixIcon;
  final double height;
  final bool hideText;
  final ValueChanged<String> onChanged;

   CustomPasswordTextField({Key key, this.validator,
    this.keyboardType,
    this.hideText,
     this.suffixIcon,
     this.height,
     this.autofill,
     this.label,
     this.controller,
     this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 19,
      keyboardType: keyboardType,
      autofillHints: [autofill],
      validator: validator,
      onChanged: onChanged,
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
        contentPadding: EdgeInsets.only(left: 19.w, top:0.0.h ),
        hintText: label,
        hintStyle: TextStyle(
            fontSize: 15.sp
        ),
      ),

    );
  }
}

