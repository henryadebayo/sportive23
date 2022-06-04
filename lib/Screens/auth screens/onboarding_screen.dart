import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class OnboradingScreen extends StatelessWidget {
  const OnboradingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(children: [
          SizedBox(
            height: 197.h,
          ),
          Center(
            child: Container(
              height: 86.h,
              width: 330.w,
              color: kAppBarRedColour,
              child: Center(
                child: Text(
                  "App Logo",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 24.sp),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 2),
          Text(
            "The Home of Football",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
          ),
        ]),
      ),
    );
  }
}
