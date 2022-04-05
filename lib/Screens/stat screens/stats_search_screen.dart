import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class StatsSearchScreen extends StatefulWidget {
  const StatsSearchScreen({Key key}) : super(key: key);

  @override
  _StatsSearchScreenState createState() => _StatsSearchScreenState();
}

class _StatsSearchScreenState extends State<StatsSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0.h),
        child: AppBar(
          title: Padding(
            padding: EdgeInsets.only(top: 20.0.h),
            child: Text(
              "Search",
              style: TextStyle(fontSize: 20.0.sp),
            ),
          ),
          centerTitle: true,
          backgroundColor: kStatAppBarGreenColor,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0.h),
              child: TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.black12,
                  fillColor: Colors.black12,
                  //border: InputBorder.none,
                  hintText: "Search team, competition or Nation",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0.h,
              width: double.infinity,
              color: kAshBackColour,
              child: Row(
                children: [
                  Text("Teams"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
