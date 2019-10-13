import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView3(),
    );
  }
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 1, childAspectRatio: 1.0),
      children: <Widget>[
        Icon(
          Icons.ac_unit,
          color: Colors.red,
        ),
        Icon(
          Icons.airport_shuttle,
          color: Colors.orange,
        ),
        Icon(
          Icons.all_inclusive,
          color: Colors.greenAccent,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.deepOrangeAccent,
        ),
        Icon(
          Icons.cake,
          color: Colors.tealAccent,
        ),
        Icon(
          Icons.free_breakfast,
          color: Colors.brown,
        ),
        Icon(
          Icons.code,
          color: Colors.cyan,
        ),
      ],
    );
  }
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 90, crossAxisSpacing: 1, childAspectRatio: 3),
      children: <Widget>[
        Icon(
          Icons.ac_unit,
          color: Colors.red,
        ),
        Icon(
          Icons.airport_shuttle,
          color: Colors.orange,
        ),
        Icon(
          Icons.all_inclusive,
          color: Colors.greenAccent,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.deepOrangeAccent,
        ),
        Icon(
          Icons.cake,
          color: Colors.tealAccent,
        ),
        Icon(
          Icons.free_breakfast,
          color: Colors.brown,
        ),
        Icon(
          Icons.code,
          color: Colors.cyan,
        ),
      ],
    );
  }
}

class GridView3 extends StatelessWidget {
  List<Widget> _getWidgets() {
    var tmpList = new List<Widget>();
    for (var i = 1; i < 8; i++) {
      tmpList.add(Padding(
          padding: EdgeInsets.all(10),
          child: Image.network(
            "https://www.itying.com/images/flutter/$i.png",
            fit: BoxFit.cover,
          )));
    }
    return tmpList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2, children: _getWidgets(), childAspectRatio: 1.7);
  }
}
