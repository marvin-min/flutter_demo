import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello"),),
      body: ListView4(),
    );
  }
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisSize:MainAxisSize.min,children: <Widget>[
      ListTile(title: Text("商品列表")),
      Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemExtent: 30.0,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text("$index"));
              }))
    ]);
  }
}

class ListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 100,
      //列表项构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );
  }
}

class ListView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1551039200,1108067788&fm=26&gp=0.jpg",width: 220,),
        Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1551039200,1108067788&fm=26&gp=0.jpg",width: 220,),
        Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1551039200,1108067788&fm=26&gp=0.jpg",width: 220,),
        Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1551039200,1108067788&fm=26&gp=0.jpg",width: 220,),
        Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1551039200,1108067788&fm=26&gp=0.jpg",width: 220,),
        Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1551039200,1108067788&fm=26&gp=0.jpg",width: 220,),
      ],
    );
  }
  
}
