import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class fireLampLogo extends StatelessWidget {
  double height;
  double width;
  fireLampLogo({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svg/firelamp.svg",
      height: height,
      width: width,
    );
  }
}

class MainLogo extends StatelessWidget {
  double height;
  double width;
  MainLogo({this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svg/text.svg",
      height: height,
      width: width,
      //fit: BoxFit,
    );
  }
}
