import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class WalkthroughScreen extends StatelessWidget {
  const WalkthroughScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PhysicalModel(
              color: Colors.black45,
              child: Container(
                height: 72.h,
                width: 72.w,
                decoration: BoxDecoration(
                  color: kAppBarRedColour,
                  borderRadius: BorderRadius.circular(36.r),
                ),
                child: Center(
                    child: Icon(
                  Icons.play_arrow_sharp,
                  color: kBlackColour,
                )),
              ),
            ),
            Container(
              height: 48.h,
              width: double.infinity.w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15.0.r)),
              //color: kAshColour,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
