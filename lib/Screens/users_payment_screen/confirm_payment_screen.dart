import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class ConfirmPayment extends StatelessWidget {
  const ConfirmPayment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Payment"),
        backgroundColor: kUserAppBarColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You are going to deposit the amount of: #500",
                  style: kNormalBlackTextStyle.copyWith(
                      fontSize: 15.0.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 56.0.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                      onPressed: () {},
                      height: 40.0.h,
                      color: Colors.red,
                      child: Text("Back",
                          style: kNormalWhiteTextStyle.copyWith(
                              fontSize: 16.0.sp))),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                      onPressed: () {},
                      height: 40.0.h,
                      color: Colors.green,
                      child: Text(
                        "Confirm",
                        style:
                            kNormalWhiteTextStyle.copyWith(fontSize: 16.0.sp),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
