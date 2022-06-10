import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';


class CustomLoader extends StatelessWidget {
  String label;

  CustomLoader({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: kAppBarRedColour,
      backgroundColor: Colors.white,
      semanticsLabel: label,
    );
  }
}
