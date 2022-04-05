import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/widgets/svgs.dart';

class Todays_Live_Commentary_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.white70,
          elevation: 10,
          child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Container(
                height: 125.0.h,
                width: 360.0.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("UCL"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 46.h,
                              width: 46.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kAppBarRedColour,
                              ),
                            ),
                            SizedBox(
                              height: 13.05.h,
                            ),
                            Text("Club"),
                          ],
                        ),
                        Column(
                          children: [
                            Row(children: [
                              Text(
                                "0 - 1",
                                style: kNormalBlackTextStyle,
                              )
                            ]),
                            SizedBox(
                              height: 9.0.h,
                            ),
                            Text("81'"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 46.h,
                              width: 46.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kAppBarRedColour,
                              ),
                            ),
                            SizedBox(
                              height: 13.05.h,
                            ),
                            Text("Club"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ),
        Container(
          child: SingleChildScrollView(
            child: Row(
              children: [
                svgPut(),
                SvgPicture.asset(
                  'assets/images/sportiveLogo.svg',
                  width: 20.0.w,
                  height: 20.0.h,
                ),
                //   svgPut("sportiveLogo"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
