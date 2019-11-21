import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var content;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.setState((){
      content = 'Loading ...';
    });
    _getHttp().then((val){
      print(val);
      this.setState((){
        content = val.toString();
      });
    });
  }

   Future _getHttp() async {
    try {
      Response response = await Dio().get('http://a3pi.active.com/v2/search');
      var data = response.data;
      print(data);
      return data;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("测试DIO",)),
        body: Text(content.toString()??'你好啊'),
      ),
    );
  }
}
