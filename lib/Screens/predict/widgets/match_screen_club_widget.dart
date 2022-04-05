import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget MatchScreenClubCircle(
    { String label, double height, double Weight, BorderRadius borderRadius, TextStyle style}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          Container(
            height: height,
            width: Weight,
            decoration: BoxDecoration(
             // color: Colors.grey,
              //borderRadius: borderRadius,
              shape: BoxShape.circle,
            ),
            child:SvgPicture.asset(
             "assets/svg/UEFA_Champions_League_logo.svg",
              height: 25.0,
              width: 30.0,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: 8.0.w,
          )
        ],
      ),
      SizedBox(height: 6.0.h),
      Center(
        child: Text(
            label,
            style: style
        ),
      )
    ],
  );
}
