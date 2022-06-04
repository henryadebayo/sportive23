import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/constantSizes.dart';
import 'package:sportive23/widgets/textfield.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarRedColour,
        centerTitle: true,
        title: Text("Set New Password"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.done,
                  size: 26.0,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: KpaddingSize),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  CustomTextForm(label: "New Password"),
                  SizedBox(height: 16.h),
                  CustomTextForm(label: "Confirm Password"),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
