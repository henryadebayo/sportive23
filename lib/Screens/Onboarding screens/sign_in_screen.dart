import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/Onboarding%20screens/ressetPassword_Screen.dart';
import 'package:sportive23/Screens/bottom%20navigation/bottomNavigation.dart';
import 'package:sportive23/widgets/orWithDivider.dart';
import 'package:sportive23/widgets/textfield.dart';
import 'package:sportive23/widgets/transparentButtonWidget.dart';

import 'widgets/login_SigninButton.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key key,
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.h),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                child: buildTransparentButtonWidget(
                  label: "Sign In With GOOGLE",
                  colour: Color(0xFF4c8bf5),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: buildTransparentButtonWidget(
                    label: "Sign In With FACEBOOK", colour: Color(0xFF3B5998)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0.h),
                child: buildOrWithDivider(),
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      buildTextField(
                        label: "Email",
                        autofill: AutofillHints.email,
                        validator: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? "enter your valid email"
                                : null,
                      ),
                      SizedBox(height: 16.h),
                      buildPasswordTextField(
                          label: "Password",
                          hideText: _isVisible,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: !_isVisible
                                ? Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                            padding: EdgeInsets.all(0.0),
                            autofocus: true,
                            iconSize: 20.0,
                            disabledColor: Colors.green,
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "please input your password";
                            } else {
                              return null;
                            }
                          }),
                    ],
                  )),
              SizedBox(height: 25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Remember Me?"),
                  InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return ResetPassWordScreen();
                        }));
                      },
                      child: Text("Forget Password?")),
                ],
              ),
              SizedBox(height: 50.h),
              buildSignin_SignupButton(
                  label: "LOGIN",
                  onLongPress: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return BottomNavigation();
                    }));
                  },
                  onTab: () {
                    if (formKey.currentState.validate()) {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (ctx) {
                        //TODO 3:  implement login function
                        return BottomNavigation();
                      }));
                    } else {
                      return "Please input a valid email and password";
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
