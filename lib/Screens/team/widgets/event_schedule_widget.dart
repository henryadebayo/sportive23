import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventScheduleWidget extends StatefulWidget {
  const EventScheduleWidget({Key key}) : super(key: key);

  @override
  _EventScheduleWidgetState createState() => _EventScheduleWidgetState();
}

class _EventScheduleWidgetState extends State<EventScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Stack(children: [
        Container(
          height: 116.0.h,
          width: 120.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.greenAccent,
          ),
        ),
        ClipPath(
          clipper: BeveledClipper(),
          child: Container(
            height: 116.0.h,
            width: 120.0.w,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5.0.r),
              // border: Border.all(
              //   color: Colors.grey[500],
              //   width: 1,
              // ),
            ),
          ),
        ),
        Container(
          height: 116.0.h,
          width: 120.0.w,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(),
                  Text(
                    "CHE",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(),
                  Text(
                    "BCL",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 90.0.h,
          left: 40.0.w,
          child: Container(
            height: 12.0.h,
            width: 40.0.w,
            decoration: BoxDecoration(
                color: Colors.lightGreen[400],
                borderRadius: BorderRadius.circular(10.0.r)),
            child: Center(
                child: Text(
              "Live",
              style: TextStyle(color: Colors.white, fontSize: 10.0.sp),
            )),
          ),
        ),
      ]),
    );
  }
}

class BeveledClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.6.w, 0.h);
    path.lineTo(size.width * 0.2.w, size.height.h);
    path.lineTo(size.width.w, size.height.h);
    path.lineTo(size.width.w, 0.h);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
