import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/logos.dart';

class NewsFeedWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
   const NewsFeedWidget({
    this.title,
     this.imgUrl,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Container(
                height: 140.h,
                width: 329.w,
                child: Image.network(imgUrl, fit: BoxFit.cover,),
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         fit: BoxFit.cover,
                //         image: AssetImage(
                //             "assets/images/selectedTeamNewsImageMock.png"),
                //     ),
                // ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 1,
              left: 1,
              child: Center(
                child: Container(
                  height: 70.h,
                  width: 300.w,
                  child: Center(
                    child: Text(
                      "$title",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                left: 20.w,
                child: Container(
                  height: 20.0.h,
                  width: 70.0.w,
                  child: MainLogo(
                    width: 70.0.w,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 5.0.h,
        ),
        Divider(
          color: Colors.white,
          thickness: 0.8.h,
        ),
      ],
    );
  }
}
