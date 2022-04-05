import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/Onboarding%20screens/sign_in_screen.dart';
import 'package:sportive23/Screens/Onboarding%20screens/sign_up_screen.dart';
import 'package:sportive23/Screens/bottom%20navigation/bottomNavigation.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/Screens/Onboarding%20screens/widgets/login_SigninButton.dart';
import 'package:sportive23/widgets/orWithDivider.dart';
import 'package:sportive23/widgets/textfield.dart';
import 'package:sportive23/widgets/transparentButtonWidget.dart';

class SignInSignOut extends StatefulWidget {
  const SignInSignOut({Key key}) : super(key: key);

  @override
  _SignInSignOutState createState() => _SignInSignOutState();
}

class _SignInSignOutState extends State<SignInSignOut> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _index,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Register",
            style: kNormalWhiteTextStyle,
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: kAppBarRedColour,
            labelColor: kAppBarRedColour,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                text: "SIGN UP",
              ),
              Tab(
                text: "SIGN IN",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          //signUpscreen

          SignUpScreen(), //end of signup screen

          // sign in screen
          SignInScreen(),
        ]),
      ),
    );
  }
}
