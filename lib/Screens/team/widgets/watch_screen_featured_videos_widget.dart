import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/logos.dart';

class TeamFeaturedVideosWidget extends StatelessWidget {
  const TeamFeaturedVideosWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Wrap(alignment: WrapAlignment.center, children: [
              Container(
                height: 115.0.h,
                width: 150.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: Center(
                  child: Image(
                    height: 115.0.h,
                    image: AssetImage(
                        "assets/images/selectedTeamNewsImageMock.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 62.5.h,
                  width: 150.0.w,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tuchel happy to win another 'tough' match against Southampton",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              )
            ]),
          ),
          SizedBox(
            width: 5.0.w,
          ),
          Expanded(
            child: Wrap(children: [
              Container(
                height: 115.0.h,
                width: 150.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: Center(
                  child: Image(
                    height: 115.0.h,
                    image: AssetImage(
                        "assets/images/selectedTeamNewsImageMock.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Material(
                elevation: 5.0,
                child: Container(
                  height: 62.5.h,
                  width: 150.0.w,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tuchel happy to win another 'tough' match against Southampton",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
