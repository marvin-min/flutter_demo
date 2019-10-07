import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Text(
          "hello",
          style: TextStyle(color: Colors.blue),
        ),
        Text("world"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("hello"),
            Text("world"),
          ],
        ),
        Container(
          color: Colors.green,
          child: Text("ooooooooo"),
        )
      ],
    );
  }
}
