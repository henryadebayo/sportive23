import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/logos.dart';

class TimeLikeShareWidget extends StatelessWidget {
  double height;
  double width;
  TimeLikeShareWidget({
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.0.h),
            child: MainLogo(
              height: 15.0.h,
            ),
          ),
          SizedBox(
            width: 8.0.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2hrs ago",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 8.0.w,
              ),
              // SizedBox(
              //   width: 8.0.w,
              // ),
              Text(
                "1K",
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.message_outlined,
                color: Colors.black12,
              ),
              SizedBox(
                width: 8.0.w,
              ),
              // SizedBox(
              //   width: 8.0.w,
              // ),
              Icon(
                Icons.share,
                color: Colors.black12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
