import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

Widget buildSignin_SignupButton(
    {String label, @required Function onTab, @required Function onLongPress}) {
  return SizedBox(
    width: double.infinity,
    child: TextButton(
      onLongPress: onLongPress,
      onPressed: onTab,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kAppBarRedColour),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.0.h)),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 16.sp),
      ),
    ),
  );
}
