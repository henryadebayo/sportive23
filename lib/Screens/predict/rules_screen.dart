import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 39.0.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.h),
              child: Card(
                elevation: 5.0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.0.h,
                    width: 330.0.w,
                    color: kUserRecColor,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Entry Requirements ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Card(
                elevation: 5.0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.0.h,
                    width: 330.0.w,
                    color: kUserRecColor,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "How to Play",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Card(
                elevation: 5.0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.0.h,
                    width: 330.0.w,
                    color: kUserRecColor,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Scoring System",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: Card(
                elevation: 5.0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.0.h,
                    width: 330.0.w,
                    color: kUserRecColor,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Terms & Conditions ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Material(
              elevation: 8.0,
              child: ListTile(
                tileColor: kUserRecColor,
                onTap: () {},
                title: Text(
                  "Terms & Conditions ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.keyboard_arrow_down),
              ),
            )
          ],
        ),
      ),
    );
  }
}
