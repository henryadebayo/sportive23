import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/predict/widgets/top_leaderboard_widget.dart';
import 'package:sportive23/const/textStylesConst.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({Key key}) : super(key: key);

  @override
  _LeaderBoardScreenState createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  final items = [
    "Today's Rank",
    "Weekly Rank",
    "Monthly Rank",
    "Seasonal Rank"
  ];
  String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
        child: Column(
          children: [
            //<------------------ dropdown selector --------------->

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0.h),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: items.map(buidMenuItems).toList(),
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 30.0,
                      onChanged: (value) => setState(() {
                        this.value = value;
                      }),
                      value: value,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopWinnerWidget(),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.0.h),
                  child: TopWinnerWidget(),
                ),
                TopWinnerWidget(),
              ],
            ),
            SizedBox(
              height: 59.0.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(radius: 26.0.r),
                        title: Text(
                          "Henry V ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text("45"),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  );
                },
              ),
            ),
            // moreWinnersWidget()),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buidMenuItems(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: kNormalBlackTextStyle.copyWith(fontSize: 16.0.sp),
        ),
      );
}
