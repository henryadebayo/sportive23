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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Curent Password"),
              ),
              buildTextField(
                label: "Curent Password",
              ),
              TextButton(
                onPressed: () {},
                child: Text("Forget Password"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("New Password"),
              ),
              buildTextField(
                label: "New Password",
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Confirm Password"),
              ),
              buildTextField(
                label: "Confirm Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
