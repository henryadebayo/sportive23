import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sportive23/Screens/homeScreen/widgets/club_add_widget.dart';
import 'package:sportive23/Screens/homeScreen/widgets/homeScreenVideoWidget.dart';
import 'package:sportive23/Screens/homeScreen/widgets/homeScreenWidget1.dart';
import 'package:sportive23/Screens/homeScreen/widgets/homeTransferNewsWidget.dart';
import 'package:sportive23/Screens/homeScreen/widgets/homenewsFeedWidget.dart';
import 'package:sportive23/Screens/homeScreen/widgets/topNewsWidget.dart';
import 'package:sportive23/Screens/stat%20screens/widgets/todays_matches_table.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/widgets/clubCircle.dart';
import 'package:sportive23/Screens/homeScreen/widgets/mainHomeWidget.dart';
import '../../blocs/news_bloc/news_bloc_bloc.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0.h),
        child: AppBar(
          backgroundColor: kAppBarRedColour,
          elevation: 0.0,
          title: Padding(
            padding: EdgeInsets.only(top: 30.0.h, left: 20.0.w, bottom: 10.0.h),
            child: Text(
              "Trending",
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 116.h,
                ),

                //<---------------------TOP HIGHLIGHTS-------------------->
                homeMainContainner(
                  height: 205.h,
                  width: MediaQuery.of(context).size.width.w,
                  CustomeBorder: BorderRadius.only(
                    topLeft: Radius.circular(10.0.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.0.w,
                          top: 16.0.h,
                        ),
                        child: Text(
                          "Top Highlights",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            homeScreenVideoWidget(),
                            homeScreenVideoWidget(),
                            homeScreenVideoWidget(),
                            homeScreenVideoWidget(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),

                //<---------------------TODAY'S MATCHES-------------------->

                homeMainContainner(
                  height: 205.h,
                  width: MediaQuery.of(context).size.width.w,
                  CustomeBorder: BorderRadius.only(
                    topRight: Radius.circular(10.0.r),
                  ),
                  child: Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.0.w,
                              top: 16.0.h,
                            ),
                            child: Text(
                              "Today's Matches",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Divider(
                            color: Colors.grey[300],
                            thickness: 0.8.h,
                          ),
                          Container(
                            height: 132.h,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (BuildContext context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.0.w),
                                    child: const TodaysMatchesTable(),
                                  );
                                }),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),

                //<---------------------TOP NEWS-------------------->

                homeMainContainner(
                  height: 830.h,
                  width: MediaQuery.of(context).size.width.w,
                  CustomeBorder: BorderRadius.only(
                    topLeft: Radius.circular(10.0.r),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.0.w,
                            top: 16.0.h,
                          ),
                          child: Text(
                            "Top News",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.0.w, top: 8.0.h),
                          child: Column(
                            children: const [
                              topNewsWidget(),
                              topNewsWidget(),
                              topNewsWidget(),
                              topNewsWidget(),
                              topNewsWidget(),
                              topNewsWidget(),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10.0.h,
                ),

                //<----------------------SUGGESTED TEAMS & LEAGUES FOR YOU--------------------->

                homeMainContainner(
                  height: 150.h,
                  width: MediaQuery.of(context).size.width.w,
                  CustomeBorder: BorderRadius.only(
                    topRight: Radius.circular(10.0.r),
                  ),
                  child:
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.0.w,
                            top: 16.0.h,
                          ),
                          child: Text(
                            "SUGGESTED TEAMS & LEAGUES FOR YOU",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 0.8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            homeClubCircle(
                              assetName:
                                  "assets/svg/FC_Bayern_München_logo_(2017).svg",
                              label: "club",
                              height: 60.h,
                              Weight: 60.w,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            SizedBox(
                              width: 8.0.w,
                            ),
                            homeClubCircle(
                              assetName: "assets/svg/Chelsea_FC2.svg",
                              label: "club",
                              height: 60.h,
                              Weight: 60.w,
                              textColor: Colors.black,
                              borderRadius: BorderRadius.circular(60.r),
                            ),
                            SizedBox(
                              width: 8.0.w,
                            ),
                            homeClubCircle(
                              assetName: "assets/svg/Chelsea_FC2.svg",
                              label: "club",
                              height: 60.h,
                              Weight: 60.w,
                              textColor: Colors.black,
                              borderRadius: BorderRadius.circular(60.r),
                            ),
                            SizedBox(
                              width: 8.0.w,
                            ),
                            homeClubCircle(
                              assetName: "assets/svg/Chelsea_FC2.svg",
                              label: "club",
                              height: 60.h,
                              Weight: 60.w,
                              textColor: Colors.black,
                              borderRadius: BorderRadius.circular(60.r),
                            ),
                          ],
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10.0.h,
                ),

                // <-------------------------NEWS FEED---------------------------------->

                homeMainContainner(
                  height: 840.h,
                  width: MediaQuery.of(context).size.width.w,
                  CustomeBorder: BorderRadius.only(
                    topLeft: Radius.circular(10.0.r),
                  ),
                  child: 
                  Expanded(
                    child: BlocBuilder<NewsBloc, NewsState>(
                      builder: (context, state) {
                        if (state is NewsLoadingState) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color:  kAppBarRedColour,
                            ),
                          );
                        } else if (state is NewsLoadedState) {
                          return
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.0.w,
                                  top: 16.0.h,
                                ),
                                child: Text(
                                  "News Feed",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),

                             NewsFeedWidget(
                                  title: state.news[8].title,
                                  imgUrl: state.news[8].image,
                                ),
                              NewsFeedWidget(
                                  title: state.news[7].title,
                                  imgUrl: state.news[7].image,
                                ),
                              NewsFeedWidget(
                                  title: state.news[2].title,
                                  imgUrl: state.news[2].image,
                                ),
                              NewsFeedWidget(
                                  title: state.news[3].title,
                                  imgUrl: state.news[3].image,
                                ),
                              NewsFeedWidget(
                                  title: state.news[4].title,
                                  imgUrl: state.news[4].image,
                                ),
                            ],
                          );
                        }else if (state is NewsErrorState){
                          return const Center(child: Text("Can't Load news feed at the moment", style: TextStyle(
                            color: kAppBarRedColour
                          ),)
                          );
                        }else{
                          return
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.0.w,
                                    top: 16.0.h,
                                  ),
                                  child: Text(
                                    "News Feed",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0.h,
                                ),
                                const newsFeedLoader(),
                                const newsFeedLoader(),
                                const newsFeedLoader(),
                                const newsFeedLoader(),
                                const newsFeedLoader(),
                                const newsFeedLoader(),
                              ],
                            );

                          // const Center(
                          //   // child: CircularProgressIndicator(
                          //   //     color: kAppBarRedColour
                          //   // ),
                          // );
                        }
                      }
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0.h,
                ),

                //<------------TRANSFER NEWS------------->

                homeMainContainner(
                  height: 945.h,
                  width: MediaQuery.of(context).size.width.w,
                  CustomeBorder: BorderRadius.only(
                    topLeft: Radius.circular(10.0.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.0.w,
                          top: 16.0.h,
                        ),
                        child: Text(
                          "Transfer News",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 0.8.h,
                      ),
                      const TransferNewsWidget(),
                      const TransferNewsWidget(),
                      const TransferNewsWidget(),
                      const TransferNewsWidget(),
                      const TransferNewsWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          homeTopContainner(
            height: 100.h,
            width: MediaQuery.of(context).size.width.w,
            CustomeBorder: BorderRadius.only(
              bottomRight: Radius.circular(20.0.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0.w, top: 20.0.h),
                  child: Row(
                    children: [
                      ClubAddWidget(radius: 15.0),
                      SizedBox(
                        width: 8.0.w,
                      ),

                      //<----------------CLUB WIDGETS----------------------->

                      homeClubCircle(
                        assetName: "assets/svg/Chelsea_FC2.svg",
                        label: "club",
                        height: 30.h,
                        Weight: 30.w,
                        textColor: Colors.white,
                        //  borderRadius: BorderRadius.circular(40.r),
                      ),
                      homeClubCircle(
                        assetName: "assets/svg/FC_Barcelona_(crest).svg",
                        label: "club",
                        height: 30.h,
                        Weight: 30.w,
                        textColor: Colors.white,
                        //borderRadius: BorderRadius.circular(40.r),
                      ),
                      homeClubCircle(
                        assetName: "assets/svg/Atletico_Madrid_2017_logo.svg",
                        label: "club",
                        height: 30.h,
                        Weight: 30.w,
                        textColor: Colors.white,
                        //  borderRadius: BorderRadius.circular(40.r),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class newsFeedLoader extends StatelessWidget {
  const newsFeedLoader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        height: 140.h,
        width: 329.w,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0.r),
       ),
      ),
      baseColor:  Colors.white54,
      highlightColor:  Colors.redAccent[100],
    );
  }
}
