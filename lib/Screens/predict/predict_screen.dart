import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/predict/widgets/match_screen_widget.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

import 'leaderBoard_screen.dart';
import 'matches_screen.dart';
import 'prizes_screen.dart';
import 'rules_screen.dart';

class PredictScreen extends StatefulWidget {
  const PredictScreen({Key key}) : super(key: key);

  @override
  _PredictScreenState createState() => _PredictScreenState();
}

class _PredictScreenState extends State<PredictScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0.h),
          child: AppBar(
            backgroundColor: kPredictionLeagueAppBarColor,
            title: Padding(
              padding: EdgeInsets.only(
                top: 30.0.h,
                left: 20.0.w,
              ),
              child: Text("Prediction League", style: kAppBarTextStyle),
            ),
            bottom: TabBar(
              // indicatorPadding: EdgeInsets.symmetric(vertical: 20.0.h),
              unselectedLabelColor: Colors.black,
              automaticIndicatorColorAdjustment: false,
              indicator: BoxDecoration(color: Colors.white),
              indicatorColor: kPredictionLeagueAppBarColor,
              tabs: [
                Tab(
                  text: "Matches",
                ),
                Tab(
                  text: "Leader\nBoard",
                ),
                Tab(
                  text: "Rules",
                ),
                Tab(
                  text: "Prizes",
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: TabBarView(children: [
            //<--------------------/Matches screen------------------------------->
            MatchesScreen(),

            //<--------------------Leader Board screen------------------------------->
            LeaderBoardScreen(),

            //<-----------------------------Rules Screen------------------------>
            RulesScreen(),

            //<------------------------PRIZES Screen--------------------------->
            PrizesScreen(),
          ]),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    var controlPoint = Offset(0, size.height);
    var endPoint = Offset(size.width / 4, size.height);
// path.quadraticBezierTo(size.width, size.height, endPoint.dx, endPoint.dy);
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width / 2, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
