import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class PrizesScreen extends StatelessWidget {
  const PrizesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 36.0.h, horizontal: 16.0.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Material(
                elevation: 8.0,
                child: ListTile(
                  tileColor: kUserRecColor,
                  onTap: () {},
                  title: Text(
                    "Overview ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Material(
                elevation: 8.0,
                child: ListTile(
                  tileColor: kUserRecColor,
                  onTap: () {},
                  title: Text(
                    "Prize Breakdown",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
