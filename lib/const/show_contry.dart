import 'package:flutter/material.dart';
import 'package:sportive23/const/coloursConst.dart';

class ShowCountry extends StatelessWidget {
  const ShowCountry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Nigeria",
          style: TextStyle(color: kUserAppBarColor),
        ),
      ],
    );
  }
}
