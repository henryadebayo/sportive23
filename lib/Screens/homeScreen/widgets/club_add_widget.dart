import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ClubAddWidget extends StatelessWidget {
  double radius;
  ClubAddWidget({this.radius});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius:radius.r,
          backgroundColor: Colors.black12,
          child: Center(
            child: IconButton(
                onPressed: (){

                },
                icon: Icon(
                  Icons.add, size: 15.0,
                )
            ),
          ),
        ),
        SizedBox(height: 10.0.h,),
        Text("Add", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
      ],
    );
  }
}