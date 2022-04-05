import 'package:flutter/material.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/widgets/textfield.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({Key key}) : super(key: key);

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
              child: Text("Gender"),
            ),
            buildTextField(
              label: "Select Gender",
            ),
          ],
        ))));
  }
}
