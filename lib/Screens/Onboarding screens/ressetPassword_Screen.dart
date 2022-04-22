import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/Screens/Onboarding%20screens/widgets/login_SigninButton.dart';
import 'package:sportive23/widgets/textfield.dart';

class ResetPassWordScreen extends StatefulWidget {
  const ResetPassWordScreen({Key key}) : super(key: key);

  @override
  _ResetPassWordScreenState createState() => _ResetPassWordScreenState();
}

class _ResetPassWordScreenState extends State<ResetPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarRedColour,
        title: Text("Forget Password"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),

              //circle Avater

              CircleAvatar(
                radius: 100.0.r,
                backgroundColor: kAppBarRedColour,
              ),

              SizedBox(height: 50.h),
              Text(
                "Reset Password",
                style: kNormalBlackTextStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Enter Your Email Address to Reset Your",
                style: TextStyle(fontSize: 16.sp),
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(height: 20.h),
//email field
              CustomTextForm(label: "Your Email"),

              SizedBox(height: 100.h),

              // reset button
              buildSignin_SignupButton(label: "Reset Password", onTab: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
