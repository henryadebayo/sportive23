import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysMatchesTable extends StatelessWidget {
  const TodaysMatchesTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0.h,
      width: 185.0.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.r),
          color: Colors.grey[300]
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.0.h),
        child: Column(
          children: [

            Expanded(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children:[
                        CircleAvatar(radius: 10.0.r,),
                        Text("Borussia dortmund", style: TextStyle(fontSize: 10.0.sp),),
                        Text("0"),
                      ]
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      Text("VS", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],),
                  Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children:[
                        CircleAvatar(radius: 10.0.r,),
                        Text("Chealsea", style: TextStyle(fontSize: 10.0.sp),),
                        Text("2"),
                      ]
                  ),
                ],
              ),
            ),

            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children:[
                        CircleAvatar(radius: 10.0.r,),
                        Text("Borussia dortmund", style: TextStyle(fontSize: 10.0.sp),),
                        Text("0"),
                      ]
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      Text("VS", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],),
                  Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children:[
                        CircleAvatar(radius: 10.0.r,),
                        Text("Chealsea", style: TextStyle(fontSize: 10.0.sp),),
                        Text("2"),
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
