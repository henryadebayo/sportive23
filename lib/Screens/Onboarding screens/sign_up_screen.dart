import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/bottom%20navigation/bottomNavigation.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/widgets/orWithDivider.dart';
import 'package:sportive23/widgets/textfield.dart';

import '../../repo/model/user_model.dart';
import '../../repo/services.dart/api_services.dart';

class SignUpScreen extends StatefulWidget {
  Function onTap;

  SignUpScreen({Key key, this.onTap}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();

  
  final formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  AuthServices authServices = AuthServices();
  final UserModel userModel = UserModel();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var onTap;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 24.h),
        child: Form(
          key: formKey,
          child: Column(children: [
            CustomTextForm(
                label: "First Name",
                onChanged: (value){
                  userModel.firstName = value;
                },
                validator: (value) {
                  if (value.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Please Enter a valid First Name";
                  }
                  return null;
                }),
            SizedBox(height: 20.h),
            CustomTextForm(
                label: "Last Name",
                onChanged: (value){
                  userModel.lastName = value;
                },
                validator: (value) {
                  if (value.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Please Enter a valid Last Name";
                  }
                  return null;
                }),
            SizedBox(height: 20.h),
            CustomTextForm(
                keyboardType: TextInputType.emailAddress,
                autofill: AutofillHints.email,
                onChanged: (value){
                  userModel.email = value;
                },
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? "enter a valid email"
                        : null,
                label: "Email"),
            SizedBox(height: 20.h),
            CustomPasswordTextField(
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
                onChanged:(value){
                  userModel.password =value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    //TODO 2 : validate password input
                    return "please input password";
                  }
                  return null;
                }),
            SizedBox(height: 40.h),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    //check if form data are valid
                  //authServices.SignUp(userModel.password, userModel.email, userModel.firstName, userModel.lastName);
                  print("this is the response statuscode :${authServices.responseBody}");
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext Context){
                    return  BottomNavigation();
                  }));
                 }
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
                      side: MaterialStateProperty.all(const BorderSide()),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xFF3B5998)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.0.h)),
                    ),
                    child: Text(
                      "Facebook",
                      style:
                          TextStyle(fontSize: 16.sp, color: const Color(0xFF3B5998)),
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
                      side: MaterialStateProperty.all(const BorderSide()),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xFF4c8bf5)),
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
                onPressed: Widget.onTap,
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
