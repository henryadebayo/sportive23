import 'package:flutter/material.dart';
import 'package:sportive23/const/coloursConst.dart';

class homeTopContainner extends StatelessWidget {
  Widget child;
  BorderRadius CustomeBorder;
  double height;
  double width;
  Color widgetColor;
  homeTopContainner(
      {this.child,
      this.CustomeBorder,
      this.height,
      this.width,
      this.widgetColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: CustomeBorder,
          color: widgetColor != null ? null : kAppBarRedColour),
      child: child,
    );
  }
}
