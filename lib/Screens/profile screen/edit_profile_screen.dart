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

  String genderLabel;
 final items = [
   "Male",
   "Female",
   "Rather not say"
 ];
  String value = "Gender";
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
            child: const Icon(Icons.done),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0.w, vertical: 16.0.h),
                    child: const Text("First Name"),
                  ),
                  CustomTextForm(
                    label: "First Name",
                  ),
                  SizedBox(height: 12.0.h),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Last Name"),
                  ),
                  CustomTextForm(
                    label: "Last Name",
                  ),
                  SizedBox(height: 12.0.h),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Gender"),
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                    ),
                    items: items.map(buildMenuItems).toList(),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    iconSize: 30.0,
                    onChanged: (value) => setState(() {
                      this.value = value;
                    }),
                    value:value,
                  ),

                  SizedBox(height: 12.0.h),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Phone Number"),
                  ),
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(6.0.r)),
                    child:
                  InternationalPhoneNumberInput(
                    onInputChanged: (value) {},
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    inputBorder:  const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.zero,
                    ),


                  ),
                  ),
                  SizedBox(height: 12.0.h),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Email Address"),
                  ),
                  CustomTextForm(
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
  DropdownMenuItem<String> buildMenuItems(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
    ),
  );
}
