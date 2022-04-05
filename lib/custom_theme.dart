import 'package:flutter/material.dart';

import 'const/coloursConst.dart';

class CustomTheme{
  bool iconSelected = false;
  IconThemeData buttomNav;

   ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.white,
      buttonColor: Colors.red,
      appBarTheme:AppBarTheme(
        backgroundColor: Color(0xFFFF3333),
        foregroundColor: Colors.white,
      //  iconTheme: IconThemeData();
      )
    );
  }
  // buttomNav(
  // ) {
  //  return IconThemeData(
  //      color: iconSelected? kAppBarIconButtonColor : kButtonNavSelectedIconColor;
  //
  //  )
  // }
}
