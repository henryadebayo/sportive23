import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/widgets/orWithDivider.dart';
import 'package:sportive23/widgets/textfield.dart';

import '../../repo/model/user_model.dart';
import '../../repo/services.dart/api_services.dart';

class SignUpScreen extends StatefulWidget {
  int nextIndex;

  SignUpScreen({Key key, this.nextIndex}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();

  TabController _controller;
  final formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  AuthServices authServices;
  UserModel userModel;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 24.h),
        child: Form(
          key: formKey,
          child: Column(children: [
            buildTextField(
                label: "First Name",
                onSaved: (String value){
                  userModel.firstName = value;
                },
                validator: (value) {
                  if (value.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Please Enter a valid First Name";
                  }
                }),
            SizedBox(height: 20.h),
            buildTextField(
                label: "Last Name",
                onSaved: (String value){
                  userModel.lastName = value;
                },
                validator: (value) {
                  if (value.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Please Enter a valid Last Name";
                  }
                }),
            SizedBox(height: 20.h),
            buildTextField(
                keyboardType: TextInputType.emailAddress,
                autofill: AutofillHints.email,
                onSaved: (String value){
                  userModel.email = value;
                },
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? "enter a valid email"
                        : null,
                label: "Email"),
            SizedBox(height: 20.h),
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
                      ? const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.black,
                        ),
                  padding: const EdgeInsets.all(0.0),
                  autofocus: true,
                  iconSize: 20.0,
                  disabledColor: Colors.green,
                ),
                onSaved: (String value){
                  userModel.password = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    //TODO 2 : validate password input
                    return "please input password";
                  }
                }),
            SizedBox(height: 40.h),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    //check if form data are valid
                   authServices.SignUp(userModel.email, userModel.password, userModel.firstName, userModel.lastName);                }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kAppBarRedColour),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 14.0.h)),
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.h),
              child: buildOrWithDivider(),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide()),
                      foregroundColor:
                          MaterialStateProperty.all(Color(0xFF3B5998)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.0.h)),
                    ),
                    child: Text(
                      "Facebook",
                      style:
                          TextStyle(fontSize: 16.sp, color: Color(0xFF3B5998)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide()),
                      foregroundColor:
                          MaterialStateProperty.all(Color(0xFF4c8bf5)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.0.h)),
                    ),
                    child: Text(
                      "Google",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0.h,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kAppBarRedColour),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 14.0.h)),
                ),
                child: Text(
                  "Have An Account? Sign In",
                  style: TextStyle(fontSize: 13.sp),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
