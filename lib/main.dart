import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/auth screens/signIn_SignUp_Screen.dart';
import 'package:sportive23/blocs/news_bloc/news_bloc_bloc.dart';
import 'package:sportive23/repo/services.dart/auth_api_services.dart';
import 'package:sportive23/repo/services.dart/news_api_services.dart';

import 'blocs/auth_bloc/auth_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_) => MultiBlocProvider(
        providers: [
          BlocProvider<NewsBloc>(
              create: (ctx)=>
                  NewsBloc(newsServices: NewsServices())
                  ..add(StartEvent())
          ),
          BlocProvider<AuthBloc>(
              create: (ctx) => AuthBloc(
                  authServices: AuthServices()
          )),
        ],
        child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(brightness: Brightness.dark),
          //home: Fixtures_screen(),
          //home: TodaysLive(),
          //home: SelectedTeamNewsPage(),
          // home:AboutWithdrawal(),
          //home:
          //WatchScreen(),
          // EventScheduleWidget(),
          //home: SelectedLeagueScreen(),
          home: SignInSignOut(),
          // WelcomeAnimationScreen(),
          //BottomNavigation(),
          //PredictOnboardingScreen(),
          //SelectedTeamNewsPage(),
          //SplashScreen(),
          //EditProfileScreen(),
          debugShowCheckedModeBanner: false,
        ),
      ),
      designSize: const Size(360, 640),
    );
  }
}
