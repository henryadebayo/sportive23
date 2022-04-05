import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/homeScreen/selected_team_news.dart';

import 'like_time_share_widget.dart';

class topNewsWidget extends StatelessWidget {
  const topNewsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.h),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return SelectedTeamNewsPage();
          }));
        },
        child: Row(
          children: [
            //height: 104.h,
            //width: 115.w,
            Container(
              height: 104.h,
              width: 115.w,
              child: Center(
                child: Image(
                  image:
                      AssetImage("assets/images/selectedTeamNewsImageMock.png"),
                  fit: BoxFit.cover,
                  height: 104.h,
                ),
              ),
            ),
            SizedBox(width: 8.0.w),
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90.h,
                    width: 200.w,
                    child: Text(
                      "'Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial"
                      " after Man Utd cup exit",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TimeLikeShareWidget(
                          //   width:50.0.w,
                          ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
          ],
        ),
      ),
    );
  }
}
