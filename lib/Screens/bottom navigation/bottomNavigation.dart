import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/homeScreen/homePage.dart';
import 'package:sportive23/Screens/predict/predict_screen.dart';
import 'package:sportive23/Screens/profile%20screen/profile_view.dart';
import 'package:sportive23/Screens/stat%20screens/main_stats_screen.dart';
import 'package:sportive23/const/coloursConst.dart';

import '../../sportive_icons.dart';
import '../team/team_Screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Widget> _myPages = [
    MyHomePage(),
    const TeamScreen(),
    const PredictScreen(),
    const StatsPage(),
    const profile_screen(),
  ];

  int _pageIndex = 0;

  void _onItemTap(int index) {
    setState(() => _pageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kButtonNavSelectedIconColor,
          //backgroundColor: Colors.blue,
          currentIndex: _pageIndex,
          onTap: _onItemTap,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Sportive.home),
            ),
            BottomNavigationBarItem(
              label: "Team",
              icon: Icon(Sportive.Team),
            ),
            BottomNavigationBarItem(
              label: "Predict",
              icon: Icon(Sportive.predict),
            ),
            BottomNavigationBarItem(
              label: "Stats",
              icon: Icon(Sportive.stats),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.home),
            ),
          ]),
      body: _myPages[_pageIndex],
    );
  }
}
