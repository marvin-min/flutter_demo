import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new AfterSplash(),
//        title: new Text(
//          'Welcome In SplashScreen',
//          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//        ),
        image: new Image.network(
            'http://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Outdoors/LPF/November+17/Alpaca+T-Shirt.jpg'),
        backgroundColor: Colors.white,
//        styleTextUnderTheLoader: new TextStyle(),
//        photoSize: 100.0,
//        onClick: () => print("Flutter Egypt"),
//        loaderColor: Colors.red
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Welcome In SplashScreen Package"),
          automaticallyImplyLeading: false),
      body: Row(
        children: <Widget>[
          Image(fit: BoxFit.scaleDown, image:NetworkImage('http://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Outdoors/LPF/November+17/Alpaca+T-Shirt.jpg')),

        ],
      ),
    );
  }
}
