import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class Fixtures_screen_upcoming_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white70,
      elevation: 10,
      child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Container(
            height: 230.h,
            width: 360.w,
            child: Column(
              children: [
                Container(
                  height: 38.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                    color: kLightSelectedButtonRedColour,
                    // shape: BoxShape.circle
                  ),
                  child: Center(
                      child: Text(
                    "league",
                    style: kNormalWhiteTextStyle.copyWith(fontSize: 12.0.sp),
                  )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 46.h,
                          width: 46.w,
                          decoration: BoxDecoration(
                              color: kAppBarRedColour, shape: BoxShape.circle),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text("Club"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Time"),
                        Text(
                          "Date",
                          style: kNormalBlackTextStyle,
                        ),
                        Text("Zone"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 46.h,
                          width: 46.w,
                          decoration: BoxDecoration(
                              color: kAppBarRedColour, shape: BoxShape.circle),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text("Club"),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
