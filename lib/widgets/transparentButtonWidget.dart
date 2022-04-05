import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget buildTransparentButtonWidget({String label, @required Function onTab, Color colour}) {

  return TextButton(
onPressed: onTab,
style: ButtonStyle(
side: MaterialStateProperty.all(BorderSide()),
foregroundColor: MaterialStateProperty.all(Colors.black),
padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical:14.0.h )),

),
child: Text(label,
style: TextStyle(
fontSize: 16.sp
    ,
  color: colour
),
),
);
}