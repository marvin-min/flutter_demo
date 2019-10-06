import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
          flex: 100,
          child: Container(
//            height: 100,
            color: Colors.red,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 200,
          child: Container(
//            height: 100%,
            color: Colors.green,
            child: Wrap(
//          spacing: 8.0, // 主轴(水平)方向间距
//          runSpacing: 4.0, // 纵轴（垂直）方向间距
              alignment: WrapAlignment.start, //沿主轴方向居中
              children: <Widget>[Text("hello" * 300)],
            ),
          ),
        ),
      ],
    );
  }
}
