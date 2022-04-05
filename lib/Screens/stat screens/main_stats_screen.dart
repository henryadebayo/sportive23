import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/stat%20screens/stats_search_screen.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/stats_widget.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/widgets/clubCircle.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/stats_screen_club_widget.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key key}) : super(key: key);

  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0.h),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: kStatAppBarGreenColor,
            title: Padding(
              padding:
                  EdgeInsets.only(top: 30.0.h, left: 20.0.w, bottom: 10.0.h),
              child: Text(
                "Statistics",
                style:
                    TextStyle(fontSize: 37.0.sp, fontWeight: FontWeight.bold),
              ),
            ),
            //centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 8.0.w, top: 8.0.h),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatsSearchScreen()),
                    );
                  },
                  iconSize: 25.0.sp,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: 80.0.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kStatAppBarGreenColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
            ),
            SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
                child: Column(
                  children: [
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                    StatsScreenColumnWidget(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
