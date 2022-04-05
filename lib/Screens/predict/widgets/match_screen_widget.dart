import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'match_screen_club_widget.dart';

class MatchScreenWidget extends StatelessWidget {
  const MatchScreenWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100.0.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.colorBurn,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0.r),
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 1,
                  ),
                ),
              ),
              ClipPath(
                clipper: BeveledClipper(),
                child: Container(
                  height: 100.0.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0.r),
                    // border: Border.all(
                    //   color: Colors.grey[500],
                    //   width: 1,
                    // ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          MatchScreenClubCircle(
                            height: 50.0.h,
                            Weight: 50.0.w,
                            label: "UEFA Champions\n League",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('what are your'),
                            Text(
                              'predictions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0.sp),
                            ),
                            Text('today?'),
                            SizedBox(
                              height: 4.0.h,
                            ),
                            Container(
                              height: 30.0.h,
                              width: 113.0.w,
                              decoration: BoxDecoration(
                                  color: kAppBarRedColour,
                                  borderRadius: BorderRadius.circular(10.0.r)),
                              child: TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    'PLAY',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class BeveledClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.6, 0);
    path.lineTo(size.width * 0.4, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
