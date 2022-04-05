import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({Key key}) : super(key: key);

  @override
  _MatchDetailsScreenState createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 16.0.h,
                  width: 16.0.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
                SizedBox(
                  width: 20.0.w,
                ),
                Text("League"),
              ],
            ),
            Text("Group Stage(Matchday 1)"),
            SizedBox(
              height: 18.0.h,
            ),
            Container(
              height: 67.h,
              width: 248.w,
              decoration: BoxDecoration(
                color: kAppBarRedColour,
                // borderRadius: BorderRadius.circular(radius)
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                          color: kDarkAshColour,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      Text(
                        "Team",
                        style: kNormalBlackTextStyle.copyWith(fontSize: 16.sp),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 4.h,
                            width: 4.h,
                            decoration: BoxDecoration(
                              color: kAppBarRedColour,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Container(
                            height: 4.h,
                            width: 4.h,
                            decoration: BoxDecoration(
                              color: kAppBarRedColour,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Container(
                            height: 4.h,
                            width: 4.h,
                            decoration: BoxDecoration(
                              color: kAppBarRedColour,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Container(
                            height: 4.h,
                            width: 4.h,
                            decoration: BoxDecoration(
                              color: kAppBarRedColour,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Container(
                            height: 4.h,
                            width: 4.h,
                            decoration: BoxDecoration(
                              color: kAppBarRedColour,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
