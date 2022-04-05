import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


Widget teamClubCircle(
    { String label, double height, double Weight, BorderRadius borderRadius,Color textColor, String assetName, Color circleColor, Color notificationColor, Color notificationTextColor, String notificationAmount}) {
  return Padding(
    padding:  EdgeInsets.only(right: 8.0.w),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children:[ Container(
            height: height,
            width: Weight,
            decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: borderRadius,
              border: Border.all(color: circleColor, width: 2),
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
            Positioned(left: 30.0.w,
              top: 30.0.h,
              child: CircleAvatar(
                backgroundColor:notificationColor,
                radius: 7.0.r,
                child: Center(
                  child: Text(notificationAmount, style: TextStyle(color: notificationTextColor, fontSize: 10.0.sp),),
                ),
              ),
            )
    ]
        ),
        SizedBox(
          width: 8.0.w,
        ),
        //SizedBox(height: 3.0.h),
        Center(
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
        )
      ],
    ),
  );
}
