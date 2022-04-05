import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/constantSizes.dart';
import 'package:sportive23/Screens/Onboarding%20screens/widgets/login_SigninButton.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({Key key}) : super(key: key);

  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  bool _clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enable Permission"),
        backgroundColor: kAppBarRedColour,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: KpaddingSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Sportive23 uses non-sensitive information from your device to improve "
                  "its products,personalized ads and other "
                  "content throughout the app for its users.Allow access to the following:",
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                thickness: 1.0,
              ),
              SwitchListTile(
                title: Text("Location"),
                value: _clicked,
                onChanged: (bool value) {
                  setState() => _clicked = value;
                },
              ),
              Divider(
                thickness: 1.0,
              ),
              //
              SwitchListTile(
                title: Text("Calendar"),
                value: _clicked,
                onChanged: (bool value) {
                  setState() => _clicked = value;
                },
              ),
              Divider(
                thickness: 1.0,
              ),

              SwitchListTile(
                title: Text("Media"),
                value: _clicked,
                onChanged: (bool value) {
                  setState() => _clicked = value;
                },
              ),
              Divider(
                thickness: 1.0,
              ),

              SwitchListTile(
                title: Text("Storage"),
                value: _clicked,
                onChanged: (bool value) {
                  setState() => _clicked = value;
                },
              ),
              Divider(
                thickness: 1.0,
              ),

              SwitchListTile(
                title: Text("Select personalized ads "),
                value: _clicked,
                onChanged: (bool value) {
                  setState() => _clicked = value;
                },
              ),
              Divider(
                thickness: 1.0,
              ),

              SwitchListTile(
                title: Text("Create a personalized ads profile"),
                value: _clicked,
                onChanged: (bool value) {
                  setState() => _clicked = value;
                },
              ),
              Divider(
                thickness: 1.0,
              ),

              SwitchListTile(
                title: Text("Develop and improve products"),
                value: _clicked,
                onChanged: (bool value) {
                  setState(() => _clicked = value);
                },
              ),
              Divider(
                thickness: 1.0,
              ),
              CheckboxListTile(
                value: false,
                onChanged: (bool value) {
                  setState() => value = false;
                },
                title: Text(
                  "By ticking the box, you agree "
                  "to the "
                  "Terms and Conditions of Sportive23",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              buildSignin_SignupButton(
                  label: "Allow All Access",
                  onTab: () {
                    setState() => _clicked = true;
                  }),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
