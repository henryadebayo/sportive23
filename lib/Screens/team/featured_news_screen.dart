import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/team/widgets/team_club_widget.dart';
import 'package:sportive23/Screens/team/widgets/team_featured_news_widget.dart';
import 'package:sportive23/const/logos.dart';
import 'package:sportive23/widgets/clubCircle.dart';

class TeamFeaturedNews extends StatefulWidget {
  const TeamFeaturedNews({Key key}) : super(key: key);

  @override
  _TeamFeaturedNewsState createState() => _TeamFeaturedNewsState();
}

class _TeamFeaturedNewsState extends State<TeamFeaturedNews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   children: [
          //     teamClubCircle(
          //       label: "Chelsea",
          //       height: 45.0.h,
          //       Weight:45.0.w,
          //       circleColor: Colors.grey,
          //       notificationAmount: "7",
          //       notificationColor: Colors.green,
          //       notificationTextColor: Colors.black,
          //       assetName: "assets/svg/Atletico_Madrid_2017_logo.svg",
          //     ),
          //     teamClubCircle(
          //       label: "Chelsea",
          //       height: 45.0.h,
          //       Weight:45.0.w,
          //       circleColor: Colors.green,
          //       notificationAmount: "7",
          //       notificationColor: Colors.green,
          //       notificationTextColor: Colors.black,
          //       assetName: "assets/svg/Atletico_Madrid_2017_logo.svg",
          //     ),
          //     teamClubCircle(
          //       label: "Chelsea",
          //       height: 45.0.h,
          //       Weight:45.0.w,
          //       circleColor: Colors.grey,
          //       notificationAmount: "7",
          //       notificationColor: Colors.green,
          //       notificationTextColor: Colors.black,
          //       assetName: "assets/svg/Atletico_Madrid_2017_logo.svg",
          //     ),
          //     teamClubCircle(
          //       label: "Chelsea",
          //       height: 45.0.h,
          //       Weight:45.0.w,
          //       circleColor: Colors.green,
          //       notificationAmount: "7",
          //       notificationColor: Colors.green,
          //       notificationTextColor: Colors.black,
          //       assetName: "assets/svg/Atletico_Madrid_2017_logo.svg",
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 10.0.h,
          ),
          Text(
            "Featured News",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.0.sp),
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext ctx, int index) {
                  return TeamFeaturedNewsWidget();
                }),
          ),
        ],
      ),
    );
  }
}
