import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

Widget statsClubCircle(
    {double height,
    double Weight,
    BorderRadius borderRadius,
    Widget child,
    Color color}) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Container(
            height: height,
            width: Weight,
            decoration: BoxDecoration(
              color: color,
              //borderRadius: borderRadius,
              shape: BoxShape.circle,
            ),
            child: child,
          ),
          SizedBox(
            width: 2.0.w,
          )
        ],
      ),
      SizedBox(height: 6.0.h),
    ],
  );
}
