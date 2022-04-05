import 'package:flutter/material.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class UserCustomAppBar extends StatelessWidget {
  String label;
  UserCustomAppBar({this.label});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "$label",
        style: kNormalWhiteTextStyle,
      ),
      backgroundColor: kUserAppBarColor,
    );
  }
}

Widget CustomAppBar(String label)
// CustomAppBar(this.label);
{
  return AppBar(
    title: Text(
      label,
      style: kNormalWhiteTextStyle,
    ),
    backgroundColor: kUserAppBarColor,
  );
}
