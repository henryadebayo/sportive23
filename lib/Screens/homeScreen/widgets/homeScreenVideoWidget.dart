import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class homeScreenVideoWidget extends StatelessWidget {
  homeScreenVideoWidget();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w, top: 8.0.h, right: 8.0.h),
      child: Stack(children: [
        Container(
          height: 149.h,
          width: 264.w,
          decoration: BoxDecoration(
              color: kAppBarRedColour,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/selectedTeamNewsImageMock.png",
                ),
              ),
              borderRadius: BorderRadius.circular(5.0.r)),
        ),
        Container(
          height: 149.h,
          width: 264.w,
          child: Text(
            "Werner explains shootout absence in \n Chelsea's Carabao cup win over Villa ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          alignment: Alignment.bottomCenter,
        ),
        Container(
          height: 149.h,
          width: 264.w,
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_fill_rounded,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
