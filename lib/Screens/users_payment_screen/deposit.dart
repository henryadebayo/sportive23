import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/show_contry.dart';
import 'package:sportive23/const/textStylesConst.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kUserAppBarColor,
        title: Text(
          "Deposit",
          style: kNormalWhiteTextStyle,
        ),
        // actions: [Padding(
        //   padding: EdgeInsets.only(right: 8.0.w),
        //   child: Icon(Icons.done),
        // )],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 8.0.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select Payment Method",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  ShowCountry()
                ],
              ),
              SizedBox(
                height: 25.0.h,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: 100.0.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.0.h, left: 16.0.w),
                        child: Column(
                          children: [
                            Text(
                              "Instant Bank Deposit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: 70.0.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Container(
                          height: 17.0.h,
                          width: 49.0.w,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  height: 70.0.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Container(
                          height: 17.0.h,
                          width: 49.0.w,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
