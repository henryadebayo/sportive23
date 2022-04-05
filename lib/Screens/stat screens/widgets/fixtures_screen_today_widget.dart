import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/homeScreen/todays_live_page.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class FixturesScreenTodayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.white70,
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
                color: kLightSelectedButtonRedColour,
                child: Center(
                    child: Text(
                  "UEFA Champions league group STAGE 1 OF 6",
                  style: kNormalWhiteTextStyle.copyWith(fontSize: 12.0.sp),
                )),
              ),
              FixturesTodayMatchWidget(),
              FixturesTodayMatchWidget(),
              FixturesTodayMatchWidget(),
              // Container(
              //   height: 47.h,
              //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text("'82"),
              //           Container(
              //             color: kDarkAshColour,
              //             height:1.0.h,
              //             width: 14.0.w,
              //           )
              //         ],
              //       ),
              //       Text("club"),
              //       Container(
              //           child:Row(
              //             children: [
              //               Container(
              //                 height:26.h,
              //                 width: 50.w,
              //                 decoration: BoxDecoration(
              //                     color: kAppBarRedColour,
              //                     borderRadius: BorderRadiusDirectional.circular(10.r)
              //                 ),
              //                 child: Center(child: Text("0"),),),
              //
              //               Container(
              //                   height:26.h,
              //                   width: 50.w,
              //                   decoration: BoxDecoration(
              //                       color: kDarkAshColour,
              //                       borderRadius: BorderRadiusDirectional.circular(10.r)
              //                   ),
              //                   child: Center(child: Text("0"))),
              //             ],
              //           )
              //       ),
              //       Text("club"),
              //     ],
              //   ),
              // ),
              // Divider(
              //   color: kAppBarRedColour,
              //   thickness: 0.8.h,
              // ),
              // Container(
              //   height: 47.h,
              //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text("'82"),
              //           Container(
              //             color: kDarkAshColour,
              //             height:1.0.h,
              //             width: 14.0.w,
              //           )
              //         ],
              //       ),
              //       Text("club"),
              //       Container(
              //           child:Row(
              //             children: [
              //               Container(
              //                 height:26.h,
              //                 width: 50.w,
              //                 decoration: BoxDecoration(
              //                     color: kDarkAshColour,
              //                     borderRadius: BorderRadiusDirectional.circular(10.r)
              //                 ),
              //                 child: Center(child: Text("0"),),),
              //
              //               Container(
              //                   height:26.h,
              //                   width: 50.w,
              //                   decoration: BoxDecoration(
              //                       color: kAppBarRedColour,
              //                       borderRadius: BorderRadiusDirectional.circular(10.r)
              //                   ),
              //                   child: Center(child: Text("0"))),
              //             ],
              //           )
              //       ),
              //       Text("club"),
              //     ],
              //   ),
              // ),
              // Divider(
              //   color: kAppBarRedColour,
              //   thickness: 0.8.h,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class FixturesTodayMatchWidget extends StatelessWidget {
  const FixturesTodayMatchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return TodaysLive();
          })),
          child: Container(
            height: 47.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("'82"),
                    Container(
                      color: kDarkAshColour,
                      height: 1.0.h,
                      width: 14.0.w,
                    ),
                    Divider(
                      color: kAppBarRedColour,
                      thickness: 0.8.h,
                    ),
                  ],
                ),
                Text("club"),
                Container(
                    child: Row(
                  children: [
                    Container(
                      height: 26.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          color: kAppBarRedColour,
                          borderRadius: BorderRadiusDirectional.circular(10.r)),
                      child: Center(
                        child: Text("0"),
                      ),
                    ),
                    Container(
                        height: 26.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            color: kDarkAshColour,
                            borderRadius:
                                BorderRadiusDirectional.circular(10.r)),
                        child: Center(child: Text("0"))),
                  ],
                )),
                Text("club"),
              ],
            ),
          ),
        ),
        Divider(
          color: kAppBarRedColour,
          thickness: 0.8.h,
        ),
      ],
    );
  }
}
