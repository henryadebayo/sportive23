import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/team/widgets/event_schedule_widget.dart';
import 'package:sportive23/Screens/team/widgets/team_featured_news_widget.dart';
import 'package:sportive23/Screens/team/widgets/watch_screen_featured_videos_widget.dart';
import 'package:sportive23/const/coloursConst.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({Key key}) : super(key: key);

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(children: [
                Container(
                  height: 165.0.h,
                  width: 340.0.w,
                  decoration: BoxDecoration(color: Colors.blue[700]),
                ),
                Container(
                  height: 165.0.h,
                  width: 340.0.w,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_fill_rounded,
                        size: 30.0.sp,
                      )),
                ),
                Positioned(
                  top: 120.0.h,
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 10.0.h,
                    width: 340.0.w,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_down_outlined,
                          size: 30.0.sp,
                          color: kAshBackColour,
                        )),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
              child: Text(
                "Event Schedule",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0.h),
              child: Container(
                height: 116.0.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, index) {
                      return EventScheduleWidget();
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h, left: 8.0.h),
              child: Text(
                "Featured Videos",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50.0.h, top: 16.0.h),
              child: TeamFeaturedVideosWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
