import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/sportive_icons.dart';

class TransferNewsWidget extends StatelessWidget {
  const TransferNewsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 140.h,
            width: 329.w,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transfer Confirmed"),
                      Text("date"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(15.r),
                        color: kDarkAshColour,
                      ),
                    ),
                    Icon(
                      Sportive.transferNewsIcon,
                      color: Color(0xFF57C467),
                    ),
                    Container(
                      height: 60.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(15.r),
                        color: kDarkAshColour,
                      ),
                    ),
                  ],
                ),
                Text("Player's name"),
                SizedBox(
                  height: 8.0.h,
                ),
                Text("Transfer fee"),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5.0.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 250.0.w),
          child: Text(
            "View mores",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Divider(
          color: Colors.white,
          thickness: 0.8.h,
        ),
      ],
    );
  }
}
