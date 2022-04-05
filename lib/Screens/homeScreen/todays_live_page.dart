import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/fixtures_screen_upcoming_widget.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/todays_live_commentary_widget.dart';

class TodaysLive extends StatelessWidget {
  const TodaysLive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Fixtures",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Commentary",
                    style: TextStyle(color: kLightSelectedButtonRedColour),
                  ),
                ),
                Tab(
                  child: Text(
                    "Stats",
                    style: TextStyle(color: kLightSelectedButtonRedColour),
                  ),
                ),
                Tab(
                  child: Text(
                    "Line-Ups",
                    style: TextStyle(color: kLightSelectedButtonRedColour),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //COMMENTARY
              Container(
                child: Container(
                  child: Todays_Live_Commentary_Widget(),
                ),
              ),
              //STATS
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Stepper(steps: steps)
                  ],
                ),
              )),
              //LINE-UPS
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
