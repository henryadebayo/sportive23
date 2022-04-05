import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/profile%20screen/settingsScreen.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/widgets/clubCircle.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key key}) : super(key: key);

  @override
  _profile_screenState createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kUserAppBarColor,
        title: Text("My Profile"),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 19.22.w),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: 70.0.h,
                      //width: 360.w,
                      decoration: BoxDecoration(
                        color: kUserAppBarColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 100.0.w, top: 40.0.h),
                            child: Text(
                              "Marvel Victor",
                              style: kNormalWhiteTextStyle.copyWith(
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: 11.0.w, top: 22.0.h),
                            child: Column(
                              children: [
                                Text(
                                  "Account Balance",
                                  style: kNormalWhiteTextStyle.copyWith(
                                      fontSize: 15.0.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  height: 7.0.h,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 5.0.h),
                                    child: Container(
                                      // height:25.h,
                                      //  width: 75.w,
                                      decoration: BoxDecoration(
                                        color: kUserBalanceColor,
                                      ),
                                      child: Center(
                                        child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.0.w),
                                              child: Text(
                                                "100,000,000.00",
                                                style: kNormalWhiteTextStyle
                                                    .copyWith(
                                                  fontSize: 16.0.sp,
                                                ),
                                                softWrap: false,
                                              ),
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                                //{U+20A6}
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -80,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 78.0.h,
                            width: 78.0.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/henry.jpg")),
                              border: Border.all(
                                  //width: 3.0.w,
                                  color: Colors.white),
                            ),
                          ),
                          Text("Nigeria"),
                          Text("Joined Nov 2021"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 100.h,),
            Padding(
              padding: EdgeInsets.only(top: 100.h, left: 16.0.w),
              child: Row(
                children: [
                  homeClubCircle(
                    assetName: "assets/svg/Chelsea_FC2.svg",
                    label: "Add",
                    height: 40.h,
                    Weight: 40.w,
                    // borderRadius: BorderRadius.circular(40.r),
                  ),
                  homeClubCircle(
                    assetName: "assets/svg/Chelsea_FC2.svg",
                    label: "club",
                    height: 40.h,
                    Weight: 40.w,
                    //  borderRadius: BorderRadius.circular(40.r),
                  ),
                  homeClubCircle(
                    assetName: "assets/svg/Chelsea_FC2.svg",
                    label: "club",
                    height: 40.h,
                    Weight: 40.w,
                    //borderRadius: BorderRadius.circular(40.r),
                  ),
                  homeClubCircle(
                    assetName: "assets/svg/Chelsea_FC2.svg",
                    label: "club",
                    height: 40.h,
                    Weight: 40.w,
                    //  borderRadius: BorderRadius.circular(40.r),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5.0,
              child: Container(
                height: 65.0.h,
                width: 330.0.w,
                color: kUserRecColor,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("League Position",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text("00", style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.0.h,
                horizontal: 8.0.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Best Score",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Container(
                        height: 88.0.w,
                        width: 88.0.w,
                        decoration: BoxDecoration(
                          color: kUserRecColor,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("00"),
                            SizedBox(
                              height: 6.0.h,
                            ),
                            Text("Points"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Best Finish",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Container(
                        height: 88.0.w,
                        width: 88.0.w,
                        decoration: BoxDecoration(
                          color: kUserRecColor,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("00"),
                            SizedBox(
                              height: 6.0.h,
                            ),
                            Text("Position"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5.0,
              child: Container(
                height: 65.0.h,
                width: 330.0.w,
                color: kUserRecColor,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Matchday Check-Ins",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text("00", style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
          ],
        ),
      ),
    );
  }
}
