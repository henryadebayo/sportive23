import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/Screens/auth%20screens/ressetPassword_Screen.dart';
import 'package:sportive23/blocs/auth_bloc/auth_bloc.dart';
import 'package:sportive23/repo/model/user_model.dart';
import 'package:sportive23/repo/services.dart/auth_api_services.dart';
import 'package:sportive23/repo/services.dart/news_api_services.dart';
import 'package:sportive23/widgets/orWithDivider.dart';
import 'package:sportive23/widgets/textfield.dart';
import 'package:sportive23/widgets/transparentButtonWidget.dart';
import '../../const/coloursConst.dart';
import '../bottom navigation/bottomNavigation.dart';

class SignInScreen extends StatefulWidget {
  Function onTap;
   SignInScreen({
    Key key, this.onTap
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  AuthServices authServices = AuthServices();
  NewsServices newsServices = NewsServices();
   UserModel userModel = UserModel();


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthBlocState>(
      builder: (context, state) =>
       SingleChildScrollView(
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
                    colour: const Color(0xFF4c8bf5), onTab: (){},
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.infinity,
                  child: buildTransparentButtonWidget(
                      label: "Sign In With FACEBOOK", colour:  const Color(0xFF3B5998), onTab: (){}),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0.h),
                  child: buildOrWithDivider(),
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextForm(
                          label: "Email",
                          autofill: AutofillHints.email,
                          onChanged:  (value){
                            userModel.email = value;
                          },
                          validator: (email) =>
                              email != null && !EmailValidator.validate(email)
                                  ? "enter your valid email"
                                  : null,
                        ),
                        SizedBox(height: 16.h),
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
                            onChanged: (value){
                              userModel.password = value;
                            },
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
                    const Text("Remember Me?"),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const ResetPassWordScreen();
                          }));
                        },
                        child: const Text("Forget Password?")),
                  ],
                ),
                SizedBox(height: 50.h),
                SizedBox(
                  width: double.infinity,
                  child:
                  TextButton(
                    onPressed: ()async {
                      if (formKey.currentState.validate()) {
                        //context.read<AuthBloc>().add(AuthSignIn(email:userModel.email,password:userModel.password));
                        // AuthBloc.add( AuthSignIn(email:userModel.email,password:userModel.password));
                        var res = await
                      authServices.SignIn(userModel.email, userModel.password);
                        print("this is Signin res ::: ${res.toString()}");
                      if( res['success'] == true ){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext Context){
                          return  BottomNavigation();
                        }));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Error: ${res['message']}'),
                          backgroundColor: Colors.red.shade300,
                        ));
                      }
                       newsServices.getNews();
                        // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext Context){
                        //   return  BottomNavigation();
                        // }));
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kAppBarRedColour),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.0.h)),
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
                // buildSignin_SignupButton(
                //     label: "LOGIN",
                //     onLongPress: () {
                //       Navigator.of(context)
                //           .pushReplacement(MaterialPageRoute(builder: (ctx) {
                //         return const BottomNavigation();
                //       }));
                //     },
                //     onTab: () {
                //       if (formKey.currentState.validate()) {
                //         authServices.SignIn(userModel.email, userModel.password);
                //         // if(authServices.){
                //         //
                //         // }
                //         Navigator.of(context)
                //             .pushReplacement(MaterialPageRoute(builder: (ctx) {
                //           return const BottomNavigation();
                //         }));
                //       } else {
                //         return "Please input a valid email and password";
                //       }
                    //}
                 //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
