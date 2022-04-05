import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/homeScreen/widgets/like_time_share_widget.dart';
import 'package:sportive23/const/logos.dart';

class SelectedTeamNewsPage extends StatelessWidget {
  const SelectedTeamNewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // drawerScrimColor: Colors.red,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 4.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 160.0.h,
                width: 380.0.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/selectedTeamNewsImageMock.png"),
                        fit: BoxFit.cover)),
              ),

              // NEWS TITLE
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 13.0.h),
                child: Text(
                  "Tuchel says he does not want to see 29-year-old become top scorer at Chelsea",
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ),

              //<--------------- LIKE AND NEWS TIME ICONS------------------>

              Padding(
                padding: EdgeInsets.only(
                    left: 16.0.w,
                    right: MediaQuery.of(context).size.width / 2.5),
                child: TimeLikeShareWidget(),
              ),

              //NEWS BODY
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 16.0.h),
                child: Column(
                  children: [
                    Text(
                        "Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.'Sancho is still young,but this is not FIFA!'-Ince slams £73m winger & takes aim at Martial after Man Utd cup exitSancho is still young, but this is not FIFA!- Ince slams £73m winger & takes aim at Martial after Man Utd cup exit. Sancho is still youngbut this is not FIFA! - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.Sancho is still young,but this is not FIFA! - Ince slams £73m winger takes aim at Martial after Man Utd cup exit. Sancho is still young, but this is not FIFA! - Ince slams £73m winger & takes aim at",
                        textAlign: TextAlign.start),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    Text(
                        "Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.'Sancho is still young,but this is not FIFA!'-Ince slams £73m winger & takes aim at Martial after Man Utd cup exitSancho is still young, but this is not FIFA!- Ince slams £73m winger & takes aim at Martial after Man Utd cup exit. Sancho is still youngbut this is not FIFA! - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.Sancho is still young,but this is not FIFA! - Ince slams £73m winger takes aim at Martial after Man Utd cup exit. Sancho is still young, but this is not FIFA! - Ince slams £73m winger & takes aim at",
                        textAlign: TextAlign.start),
                    SizedBox(
                      height: 30.0.h,
                    ),
                    Text(
                        "Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.Sancho is still young, but this is not FIFA!' - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.'Sancho is still young,but this is not FIFA!'-Ince slams £73m winger & takes aim at Martial after Man Utd cup exitSancho is still young, but this is not FIFA!- Ince slams £73m winger & takes aim at Martial after Man Utd cup exit. Sancho is still youngbut this is not FIFA! - Ince slams £73m winger & takes aim at Martial after Man Utd cup exit.Sancho is still young,but this is not FIFA! - Ince slams £73m winger takes aim at Martial after Man Utd cup exit. Sancho is still young, but this is not FIFA! - Ince slams £73m winger & takes aim at",
                        textAlign: TextAlign.start),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
