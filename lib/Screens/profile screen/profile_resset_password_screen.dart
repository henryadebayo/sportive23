import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/widgets/textfield.dart';

class ProfileRessetPasswordScreen extends StatelessWidget {
  const ProfileRessetPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kUserAppBarColor,
        title: Text(
          "Edit Profile",
          style: kNormalWhiteTextStyle,
        ),
        actions: [Icon(Icons.done)],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Curent Password"),
              ),
              CustomTextForm(
                label: "Curent Password",
              ),
              TextButton(
                onPressed: () {},
                child: Text("Forget Password"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("New Password"),
              ),
              CustomTextForm(
                label: "New Password",
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Confirm Password"),
              ),
              CustomTextForm(
                label: "Confirm Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
