import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/fixtures_screen_today_widget.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/fixtures_screen_upcoming_widget.dart';

class FixturesScreen extends StatefulWidget {
  const FixturesScreen({Key key}) : super(key: key);

  @override
  _FixturesScreenState createState() => _FixturesScreenState();
}

class _FixturesScreenState extends State<FixturesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
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
                  "TODAY",
                  style: TextStyle(color: kLightSelectedButtonRedColour),
                ),
              ),
              Tab(
                child: Text(
                  "UPCOMING",
                  style: TextStyle(color: kLightSelectedButtonRedColour),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //<-------------TODAY_SCREEN--------------------->
            SingleChildScrollView(
              child: Column(
                children: [
                  FixturesScreenTodayWidget(),
                  FixturesScreenTodayWidget(),
                  FixturesScreenTodayWidget(),
                  FixturesScreenTodayWidget(),
                ],
              ),
            ),

            //<---------------------UPCOMING_SCREEN-------------->
            SingleChildScrollView(
              child: Column(
                children: [
                  Fixtures_screen_upcoming_Widget(),
                  Fixtures_screen_upcoming_Widget(),
                  Fixtures_screen_upcoming_Widget(),
                  Fixtures_screen_upcoming_Widget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
