import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:flutter_screenutil/screen_util.dart';

class OnboardingWidget extends StatelessWidget {
 BuildContext context;
  String title;
  String description;
  String image;
 OnboardingWidget({this.title, this.image, this.description, this.context});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      //     SvgPicture.asset(image, width:MediaQuery.of(context).size.width
      // * 0.6,),
          Container(
            height: 314.h,
              width:MediaQuery.of(context).size.width,
              child: Image(image: AssetImage(image,), fit: BoxFit.cover,)),
          SizedBox(
            height: 35.0.h,
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0.sp
          ),),
          SizedBox(
            height: 20.0.h,
          ),
    Text(description, style: TextStyle(fontSize: 12.0.sp)),

    ],
      ),
    );
  }
}
