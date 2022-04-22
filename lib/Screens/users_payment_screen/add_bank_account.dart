import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/show_contry.dart';
import 'package:sportive23/const/user_custom_app_bar.dart';
import 'package:sportive23/widgets/custom_text_button.dart';
import 'package:sportive23/widgets/textfield.dart';

class AddBankAccount extends StatelessWidget {
  const AddBankAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Add Bank Account"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: const ShowCountry(),
              ),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Bank Account Number"),
                    ),
                    CustomTextForm(
                      label: "Enter Account Number",
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Bank Name"),
                    ),
                    CustomTextForm(
                      label: "Enter Bank Name",
                    ),
                    SizedBox(
                      height: 30.0.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomTextButton(
                  label: "Continue",
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
