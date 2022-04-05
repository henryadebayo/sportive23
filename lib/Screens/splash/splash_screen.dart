import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/logos.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: Cr,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0.w),
              child: MainLogo(),
            ),
          ),
          //SizedBox(),
          Padding(
            padding: EdgeInsets.only(bottom: 40.0.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "THE HOME OF FOOTBALL ",
                  style:
                      TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
