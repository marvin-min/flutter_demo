import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestOnActiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
      children: <Widget>[
        Text("Latest On ACTIVE",
            style: TextStyle(
                fontSize: ScreenUtil().setSp(48), fontWeight: FontWeight.w600)),
        Container(
          width: double.infinity,
          height: ScreenUtil().setHeight(2),
          color: Colors.black12,
          margin: EdgeInsets.only(top: ScreenUtil().setWidth(20), bottom: ScreenUtil().setWidth(20)),
        ),
        
      ],
    ));
  }
}
