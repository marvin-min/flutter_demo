import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var costTime = 0;
    return Row(
      children: <Widget>[
        TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
          costTime++;
          return Text("已花费 [ ${costTime} ] 秒");
        }),
        Text("首页🌹")
      ],
    );
  }

  String timeFormat(int duration){
    var m = duration/60;
    var h = m % 3600;
  }
}

