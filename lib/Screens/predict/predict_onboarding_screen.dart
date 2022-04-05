import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/predict/predict_screen.dart';
import 'package:sportive23/Screens/predict/widgets/predict_onboarding_widget.dart';
import 'package:sportive23/const/coloursConst.dart';

class PredictOnboardingScreen extends StatefulWidget {
  const PredictOnboardingScreen({Key key}) : super(key: key);

  @override
  _PredictOnboardingScreenState createState() =>
      _PredictOnboardingScreenState();
}

class _PredictOnboardingScreenState extends State<PredictOnboardingScreen> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    OnboardingWidget(
      image: "assets/images/wavy.jpg",
      title: "Welcome To The Prediction League",
      description:
          "Are you passionate about football? if yes, then join\n other fans all over in the Sportive23 prediction league.",
    ),
    OnboardingWidget(
      image: "assets/images/people.jpg",
      title: "Top The Leaderboards",
      description:
          "Compete weekly,monthly and seasonally with other football fans for a top spot in the prediction league ",
    ),
    OnboardingWidget(
      image: "assets/images/happy.jpg",
      title: "Win Amazing Prizes",
      description:
          "Win amazing monetary prizes at the end of the weekly, monthly and seasonally draw",
    ),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Stack(
          children: [
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 80.0.h, right: 20.0.w),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                            return PredictScreen();
                          }),
                        );
                        // print('push to next ');
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                        //   return PredictScreen();
                        // }));
                        // print('push to next ');
                      },
                      child: Text(
                        "SKIP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kUserAppBarColor,
                            fontSize: 15.0.sp),
                      )),
                )
              ],
            ),
            PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: _onChanged,
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index];
                }),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List<Widget>.generate(
                          _pages.length,
                          (int index) => AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            height: 8.0.h,
                            width: (index == _currentPage) ? 30 : 10,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _currentPage)
                                  ? kUserAppBarColor.withOpacity(0.8)
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeInOut);
                          (_currentPage == _pages.length - 1)
                              ? Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                    return PredictScreen();
                                  }),
                                )
                              : _controller.jumpToPage(0);
                          //: _controller.nextPage(duration: Duration(milliseconds: 800), curve: Curves.easeInOut);
                          // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                          //   return PredictScreen();
                          // }),
                          // )
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(CircleBorder()),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20)),
                          backgroundColor: MaterialStateProperty.all(
                              kUserAppBarColor), // <-- Button color
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed))
                              return kUserRecColor; // <-- Splash color
                          }),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
