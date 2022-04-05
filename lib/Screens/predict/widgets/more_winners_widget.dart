import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class moreWinnersWidget extends StatelessWidget {
  const moreWinnersWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h),
      child: Column(
        children: [
          ListTile(
            leading:
            CircleAvatar(radius: 26.0.r),

            title: Text("Henry V ", style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text("45"),
          ),
          Divider(color: Colors.black,),
        ],
      ),
    );
  }
}
