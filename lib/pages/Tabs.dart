import 'package:ctl/pages/tabs/Home.dart';
import 'package:ctl/pages/tabs/News.dart';
import 'package:ctl/pages/tabs/Settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_umplus/flutter_umplus.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [Home(),News(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 28,
        fixedColor:Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          FlutterUmplus.event('incrementCounter', label: 'select tab');
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("新闻")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置")),
        ],
      ),
    );
  }
}