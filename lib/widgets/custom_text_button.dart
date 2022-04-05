import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class CustomTextButton extends StatelessWidget {
  String label;
  Color color;
  CustomTextButton({this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.0.h)),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 16.sp),
      ),
    );
  }
}
