import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/Onboarding%20screens/ressetPassword_Screen.dart';
import 'package:sportive23/Screens/profile%20screen/edit_profile_screen.dart';
import 'package:sportive23/Screens/users_payment_screen/deposit.dart';
import 'package:sportive23/Screens/users_payment_screen/withdrawal.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "settings",
          style: kNormalBlackTextStyle,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 30.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PROFILE",
              style: TextStyle(
                  color: ksettingsScreenTextColor,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return EditProfileScreen();
                }));
              },
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Edit Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ResetPassWordScreen();
                }));
              },
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Notification",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Text(
              "PAYMENTS",
              style: TextStyle(
                  color: ksettingsScreenTextColor,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DepositScreen();
                }));
              },
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Deposit",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AboutWithdrawal();
                }));
              },
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Withdrawal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Text(
              "SUPPORT",
              style: TextStyle(
                  color: ksettingsScreenTextColor,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Terms and Conditions",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 20.0.h,
            ),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Log Out",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      )),
    );
  }
}
