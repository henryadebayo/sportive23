import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/textStylesConst.dart';

Widget buildOrWithDivider() {
  return Row(children: [
    Expanded(
        child: Divider(
      thickness: 1,
    )),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Text(
        "OR",
        style: TextStyle(color: Colors.black, fontSize: 16.0.sp),
      ),
    ),
    Expanded(
        child: Divider(
      thickness: 1,
    )),
  ]);
}

Widget Customdivider() {
  return Expanded(
      child: Divider(
    thickness: 1,
  ));
}
