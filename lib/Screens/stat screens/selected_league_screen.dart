import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sportive23/Screens/homeScreen/fixtures_screen.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/todays_matches_table.dart';

class SelectedLeagueScreen extends StatefulWidget {
  const SelectedLeagueScreen({Key key}) : super(key: key);

  @override
  _SelectedLeagueScreenState createState() => _SelectedLeagueScreenState();
}

class _SelectedLeagueScreenState extends State<SelectedLeagueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 70.0.h,
            color: Colors.pinkAccent,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 12.0.h),
                child: Container(
                    height: 70.0.h,
                    width: 200.0.w,
                    child: SvgPicture.asset(
                      "assets/svg/UEFA_Champions_League_logo.svg",
                    )),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 16.0.h, left: 8.0.w, right: 8.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Matches",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Oct 17",
                          style: TextStyle(
                            color: Colors.black,
                            //fontSize: 17.sp,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.0.h,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      "Match Fixtures: Group Stage Matchday 1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 150.0.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 8.0.w),
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) {
                                    return FixturesScreen();
                                  })),
                                  child: TodaysMatchesTable(),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text(
                      "Table",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    thickness: 1.0.h,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 21.0.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: Container(
                              height: 20.0.h,
                              width: 60.0.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0.r),
                                  color: Colors.grey[300]),
                              child: Center(child: Text("Group A")),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 30.0.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                    child: Material(
                      type: MaterialType.card,
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      // borderOnForeground: false,
                      color: Colors.transparent,
                      child: Expanded(
                        child: Container(
                          //height: 200.h,

                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0.r)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0.w, vertical: 10.0.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Group A",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        Text("W",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("D",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("L",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("P",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 3.0.w,
                                    height: 30.0.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(1.0.r)),
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 5.0.w,
                                        ),
                                        Text("1"),
                                        CircleAvatar(
                                          radius: 8.0.r,
                                        ),
                                        Text("Chealsea"),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    width: 40.0.w,
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Expanded(
                                    //   width: 50.0.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("23"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("100-"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 3.0.w,
                                    height: 30.0.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(1.0.r)),
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 5.0.w,
                                        ),
                                        Text("1"),
                                        CircleAvatar(
                                          radius: 8.0.r,
                                        ),
                                        Text("Chealsea"),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    width: 40.0.w,
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Expanded(
                                    //   width: 50.0.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("23"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("100-"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 3.0.w,
                                    height: 30.0.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(1.0.r)),
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 5.0.w,
                                        ),
                                        Text("1"),
                                        CircleAvatar(
                                          radius: 8.0.r,
                                        ),
                                        Text("Chealsea"),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    width: 40.0.w,
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Expanded(
                                    //   width: 50.0.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("23"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("100-"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 3.0.w,
                                    height: 30.0.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(1.0.r)),
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 5.0.w,
                                        ),
                                        Text("1"),
                                        CircleAvatar(
                                          radius: 8.0.r,
                                        ),
                                        Text("Chealsea"),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    width: 40.0.w,
                                  ),

                                  //<-------------POINT HOLDER----------------->
                                  Expanded(
                                    //   width: 50.0.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("23"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("1"),
                                        SizedBox(
                                          width: 40.0.w,
                                        ),
                                        Text("100-"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
