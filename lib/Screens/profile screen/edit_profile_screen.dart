import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';
import 'package:sportive23/widgets/textfield.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: kUserAppBarColor,
        title: Text(
          "Edit Profile",
          style: kNormalWhiteTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0.w),
            child: Icon(Icons.done),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: kUserAppBarColor,
              height: 112.0.h,
              child: Center(
                child: CircleAvatar(
                  radius: 50.0.r,
                  backgroundImage: AssetImage("assets/images/henry.jpg"),
                ),
                // Container(
                //   height: 78.0.h,
                //   width: 78.0.w,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //         image: AssetImage("assets/images/henry.jpg")
                //     ),
                //     border: Border.all(
                //       //width: 3.0.w,
                //         color: Colors.white
                //     ),
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0.w, vertical: 16.0.h),
                    child: Text("First Name"),
                  ),
                  buildTextField(
                    label: "First Name",
                  ),
                  SizedBox(height: 12.0.h),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Last Name"),
                  ),
                  buildTextField(
                    label: "Last Name",
                  ),
                  SizedBox(height: 12.0.h),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Gender"),
                  ),
                  buildTextField(
                    label: "Select Gender",
                  ),
                  SizedBox(height: 12.0.h),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Phone Number"),
                  ),
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(6.0.r)),
                    child: Stack(children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: (value) {},
                        selectorTextStyle: TextStyle(color: Colors.black),
                        // inputDecoration: InputDecoration(
                        //   contentPadding: EdgeInsets.only(bottom: 15.0.h)
                        // ),
                      ),
                      Positioned(
                          left: 140,
                          child: Container(
                            height: 60.0.h,
                            width: 1.0.w,
                            color: Colors.black,
                          ))
                    ]),
                  ),
                  SizedBox(height: 12.0.h),
                  // Row(
                  //   children: [
                  //           buildTextField(
                  //             label: "Phone Number",
                  //           ),
                  //   ],
                  // ),
                  Container(
                    height: 45.0.h,
                    width: 80.0.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(
                      child: Text("Select"),
                    ),
                  ),
                  SizedBox(height: 12.0.h),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Email Address"),
                  ),
                  buildTextField(
                    label: "Email Address",
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
