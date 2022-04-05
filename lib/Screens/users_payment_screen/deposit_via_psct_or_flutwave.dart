import 'package:flutter/material.dart';
import 'package:sportive23/const/coloursConst.dart';
import 'package:sportive23/const/textStylesConst.dart';

class DepositWithPayStackOrFlutterWave extends StatelessWidget {
  const DepositWithPayStackOrFlutterWave({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kUserAppBarColor,
            title: Text(
              "Deposit",
              style: kNormalWhiteTextStyle,
            ),
            //  bottom: ,
          ),
        ));
  }
}
