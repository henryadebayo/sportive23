import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopWinnerWidget extends StatelessWidget {
  const TopWinnerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children:[ Column(
      children: [
        CircleAvatar(radius: 40.0.r),
        Text("Marvel A", style: TextStyle(fontWeight: FontWeight.bold),),
        Text("50"),
      ],
    ),
      Positioned(
        left: 65,
        child: CircleAvatar(
          radius: 10.0.r,
          backgroundColor: Colors.red,
          child: Center(child: Text(
            "1", style: TextStyle(fontWeight: FontWeight.bold),
          ),),
        ),
      ),
    ]);
  }
}
