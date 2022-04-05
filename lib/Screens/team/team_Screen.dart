import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/team/team_search_screen.dart';
import 'package:sportive23/Screens/team/watch_screen.dart';
import 'package:sportive23/Screens/team/widgets/team_club_widget.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/widgets/clubCircle.dart';

import 'featured_news_screen.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key key}) : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _curentIndex,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0.h),
          child: AppBar(
              elevation: 0.0,
              backgroundColor: kAppBarRedColour,
              title: Padding(
                padding: EdgeInsets.only(left: 8.0.w, top: 20.0.h),
                child: Text(
                  "Team",
                  style: TextStyle(fontSize: 30.0.sp, color: Colors.white),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0.w, top: 8.0.h),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TeamSearchScreen();
                      }));
                    },
                    iconSize: 25.0.sp,
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
        ),
        body: Column(
          children: [
            Container(
              height: 110.0.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kAppBarRedColour,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                child: Center(
                    child: Container(
                  height: 40.0.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0.r)),
                  child: TabBar(
                      //dragStartBehavior: DragStartBehavior.down,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0.r),
                        color: kAppBarRedColour,
                        border: Border.all(color: Colors.white),
                      ),
                      tabs: [
                        Tab(text: "News"),
                        Tab(text: "Matchs"),
                      ]),
                )),
              ),
            ),
            Expanded(
              //height: 380.0.h,
              child: TabBarView(children: [
                //<-----------------  NEWS SCREEN ------------------------>

                Container(
                  // height: 50.0.h,
                  // width: 50.0.w,
                  child: Stack(children: [
                    TeamFeaturedNews(),
                    Positioned(
                      top: -30.0.h,
                      child: Row(
                        children: [
                          teamClubCircle(
                            label: "Chelsea",
                            height: 45.0.h,
                            Weight: 45.0.w,
                            circleColor: Colors.grey,
                            notificationAmount: "7",
                            notificationColor: Colors.green,
                            notificationTextColor: Colors.black,
                            assetName:
                                "assets/svg/Atletico_Madrid_2017_logo.svg",
                          ),
                          teamClubCircle(
                            label: "Chelsea",
                            height: 45.0.h,
                            Weight: 45.0.w,
                            circleColor: Colors.green,
                            notificationAmount: "7",
                            notificationColor: Colors.green,
                            notificationTextColor: Colors.black,
                            assetName:
                                "assets/svg/Atletico_Madrid_2017_logo.svg",
                          ),
                          teamClubCircle(
                            label: "Chelsea",
                            height: 45.0.h,
                            Weight: 45.0.w,
                            circleColor: Colors.grey,
                            notificationAmount: "7",
                            notificationColor: Colors.green,
                            notificationTextColor: Colors.black,
                            assetName:
                                "assets/svg/Atletico_Madrid_2017_logo.svg",
                          ),
                          teamClubCircle(
                            label: "Chelsea",
                            height: 45.0.h,
                            Weight: 45.0.w,
                            circleColor: Colors.green,
                            notificationAmount: "7",
                            notificationColor: Colors.green,
                            notificationTextColor: Colors.black,
                            assetName:
                                "assets/svg/Atletico_Madrid_2017_logo.svg",
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),

                //<-----------------  Matchs SCREEN ------------------------>

                WatchScreen(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
