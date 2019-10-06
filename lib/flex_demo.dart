import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget{

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
          ),
        ),
      ],
    );
  }

}