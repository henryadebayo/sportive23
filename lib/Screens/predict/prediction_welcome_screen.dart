import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomeAnimationScreen extends StatefulWidget {
  const WelcomeAnimationScreen({Key key}) : super(key: key);

  @override
  _WelcomeAnimationScreenState createState() => _WelcomeAnimationScreenState();
}

class _WelcomeAnimationScreenState extends State<WelcomeAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(top: 60.0.h, bottom: 40.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\😉 Hi! Henry \😉", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0.sp)),

              Text("To The\n Prediction League" , textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0.sp),)
            ],
          ),
        ),
      ),
    );
  }
}
