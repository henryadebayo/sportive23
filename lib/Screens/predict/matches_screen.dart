import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/predict/widgets/match_screen_widget.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key key}) : super(key: key);

  @override
  _MatchesScreenState createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 16.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Matches",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0.h,
              ),
              MatchScreenWidget(),
              MatchScreenWidget(),
              MatchScreenWidget(),
              MatchScreenWidget(),
              MatchScreenWidget(),
              MatchScreenWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
