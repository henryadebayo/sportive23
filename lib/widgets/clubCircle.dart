import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sportive23/const/coloursConst.dart';

Widget homeClubCircle(
    {String label,
    double height,
    double Weight,
    BorderRadius borderRadius,
    Color textColor,
    String assetName}) {
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
              //borderRadius: borderRadius,
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                assetName,
                height: 25.0,
                width: 30.0,
                fit: BoxFit.scaleDown,
              ),
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
          style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
        ),
      )
    ],
  );
}
