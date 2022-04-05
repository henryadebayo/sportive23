import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/stats_screen_club_widget.dart';

import '../selected_league_screen.dart';

class StatsScreenColumnWidget extends StatelessWidget {
  const StatsScreenColumnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.h),
      child: Material(
        elevation: 5.0,
        shadowColor: Colors.black,
        child: Container(
          height: 90.0.h,
          width: double.infinity,
          color: Colors.grey[300],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SelectedLeagueScreen();
                })),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    statsClubCircle(
                      color: kDarkAshColour,
                      height: 24.h,
                      Weight: 24.w,
                    ),
                    Text(
                      "Champions League",
                      style: kNormalWhiteTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0.w),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    statsClubCircle(
                      color: kDarkAshColour,
                      height: 24.h,
                      Weight: 24.w,
                    ),
                    statsClubCircle(
                      color: kDarkAshColour,
                      height: 24.h,
                      Weight: 24.w,
                    ),
                    statsClubCircle(
                      color: kDarkAshColour,
                      height: 24.h,
                      Weight: 24.w,
                    ),
                    statsClubCircle(
                        color: kDarkAshColour,
                        height: 24.h,
                        Weight: 24.w,
                        child: Center(
                            child: Text(
                          "+23",
                          style:
                              TextStyle(color: Colors.white, fontSize: 8.0.sp),
                        ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
