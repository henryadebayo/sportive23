import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportive23/const/show_contry.dart';
import 'package:sportive23/const/user_custom_app_bar.dart';

import 'add_bank_account.dart';

class AboutWithdrawal extends StatelessWidget {
  const AboutWithdrawal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Withdrawal"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0.h),
                    child: ShowCountry(),
                  ),
                ],
              ),
              Text(
                "For players in Nigeria, withdrawal is made directly to the bank account of the player where applicable",
                style: TextStyle(fontSize: 14.0.sp),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "For Players outside Nigeria, where possible, all withdrawals are processed using the payment method that the funds were initially deposited from. We advise that you ensure your registered payment method is the method that you wish to withdraw to.",
                style: TextStyle(fontSize: 14.0.sp),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Withdrawal via bank transfer take up to 24hours after authorization and are only actioned during banking hours.\n Withdrawal via e-wallet takes up to 3 days after authorization.",
                style: TextStyle(fontSize: 14.0.sp),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0.h),
                child: Wrap(
                  children: [
                    Text(
                      "Note:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "The withdrawal section is only available to players in the event that they have won as one of the top players on the leaderboards ",
                      style: TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 12.0.sp),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 105.0.w,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return AddBankAccount();
                            }));
                          },
                          height: 30.0.h,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              "Withdraw",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
