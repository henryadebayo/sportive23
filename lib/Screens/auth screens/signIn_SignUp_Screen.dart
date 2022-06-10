import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportive23/Screens/auth%20screens/sign_in_screen.dart';
import 'package:sportive23/Screens/auth%20screens/sign_up_screen.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class SignInSignOut extends StatefulWidget {
  final Key scaffoldKey;
  final bool isLoading;
    SignInSignOut({Key key,
      this.isLoading,
      this.scaffoldKey
   }) : super(key: key);

  @override
  _SignInSignOutState createState() => _SignInSignOutState();
}

class _SignInSignOutState extends State<SignInSignOut> with SingleTickerProviderStateMixin {
  TabController customTabController;


  @override
  void initState() {
    super.initState();
    customTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    customTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Register",
          style: kNormalWhiteTextStyle,
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: customTabController,
          indicatorColor: kAppBarRedColour,
          labelColor: kAppBarRedColour,
          unselectedLabelColor: Colors.black,
          tabs: const [
            Tab(
              text: "SIGN UP",
            ),
            Tab(
              text: "SIGN IN",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: customTabController,
          children: [
        //signUpscreen

        SignUpScreen(
          onTap: (){
            customTabController.animateTo(1);
          },
        ), //end of signup screen

        // sign in screen
        SignInScreen(),
      ]),
    );
  }
}
