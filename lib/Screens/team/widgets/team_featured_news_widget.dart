import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/logos.dart';

class TeamFeaturedNewsWidget extends StatelessWidget {
  const TeamFeaturedNewsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h),
      child: Container(
        height: 230.0.h,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 230.0.h,
                width: 150.0.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0.r),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/selectedTeamNewsImageMock.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0.h, left: 10.0.w),
                      child: CircleAvatar(
                        radius: 12.0.r,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                      child: Text(
                        "Tuchel happy to win another 'tough' matche against Southampton",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20.0.h,
                            child: MainLogo(
                              width: 40.0.w,
                            ),
                          ),
                          Text(
                            "2hrs ago",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10.0.w,
            ),
            Expanded(
              child: Container(
                height: 230.0.h,
                width: 150.0.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0.r),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/selectedTeamNewsImageMock.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0.h, left: 10.0.w),
                      child: CircleAvatar(
                        radius: 12.0.r,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                      child: Text(
                        "Tuchel happy to win another 'tough' matche against Southampton",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20.0.h,
                            child: MainLogo(
                              width: 40.0.w,
                            ),
                          ),
                          Text(
                            "2hrs ago",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
