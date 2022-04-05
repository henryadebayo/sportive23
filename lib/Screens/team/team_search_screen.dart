import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';

class TeamSearchScreen extends StatefulWidget {
  const TeamSearchScreen({Key key}) : super(key: key);

  @override
  _TeamSearchScreenState createState() => _TeamSearchScreenState();
}

class _TeamSearchScreenState extends State<TeamSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarRedColour,
        title: Text(
          "Search",
        ),
        centerTitle: true,
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
