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
                  child:
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: items.map(buildMenuItems).toList(),
                      icon: const Icon(Icons.keyboard_arrow_down),
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
                const TopWinnerWidget(),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.0.h),
                  child: const TopWinnerWidget(),
                ),
                const TopWinnerWidget(),
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
                        title: const Text(
                          "Henry V ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Text("45"),
                      ),
                      const Divider(
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

  DropdownMenuItem<String> buildMenuItems(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: kNormalBlackTextStyle.copyWith(fontSize: 16.0.sp),
        ),
      );
}
