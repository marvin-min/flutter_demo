import 'package:ctl/flex_demo.dart';
import 'package:ctl/grid_view_demo.dart';
import 'package:ctl/list_view_demo.dart';
import 'package:ctl/main_layout.dart';
import 'package:ctl/row_col_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          print(routeName);
          return LoginRoute();
        });
      },
      routes: {
        "grid_view_demo": (context) => GridViewDemo(),
        "list_view_demo": (context) => ListViewDemo(),
        "main_layout": (context) => MainLayout(),
        "flex_demo": (context) => FlexDemo(),
        "row_col": (context) => RowColWidget(),
        "about": (context) => AboutRoute(),
//        "login":(context)=>LoginRoute(),
        "newpage": (context) {
          return NewRoute(msg: ModalRoute
              .of(context)
              .settings
              .arguments);
        },
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      },
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
              fit: BoxFit.fitHeight,
              color: Colors.red,
              colorBlendMode: BlendMode.difference,
            ),
            Image(image: AssetImage("assets/images/2.jpeg"), width: 100.0),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '-----|-----',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
            OutlineButton.icon(
              icon: Icon(Icons.send),
              label: Text(
                "\uE914关于",
                style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 24.0,
                    color: Colors.green),
              ),
              onPressed: () {
//                Navigator.pushNamed(context, "about");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return new AboutRoute();
                        },
                        fullscreenDialog: false));
              },
            ),
            RaisedButton.icon(
              icon: Icon(Icons.add_box),
              label: Text(" \uE90D 登陆",
                  style: TextStyle(
                      fontFamily: "MaterialIcons",
                      fontSize: 24.0,
                      color: Colors.red)),
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.send),
              label: Text("\uE000 发送",
                  style: TextStyle(
                      fontFamily: "MaterialIcons",
                      fontSize: 24.0,
                      color: Colors.blue)),
              onPressed: () async {
//                var result  = await Navigator.push(context, MaterialPageRoute(builder: (context) {
//                  return NewRoute(msg:"卧槽");
//                }));
//                print("$result");
                var result = await Navigator.of(context)
                    .pushNamed("newpage", arguments: "Hi, Named routes." * 10);
                print("$result");
              },
            ),
            FlatButton.icon(
                icon: Icon(Icons.print),
                label: Text("RowCol Demo"),
                onPressed: () {
                  Navigator.pushNamed(context, "row_col");
                }),
            FlatButton.icon(
                icon: Icon(Icons.access_alarm),
                label: Text("Flex Demo"),
                onPressed: () {
                  Navigator.pushNamed(context, "flex_demo");
                }),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                Navigator.pushNamed(context, "main_layout");
              },
            ),IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.pushNamed(context, "list_view_demo");
              },
            ),IconButton(
              icon: Icon(Icons.grid_off),
              onPressed: () {
                Navigator.pushNamed(context, "grid_view_demo");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AboutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于我们"),
      ),
      body: Center(
          child: Column(children: <Widget>[
            Container(
              color: Colors.black,
              margin: EdgeInsets.all(60),
              child: new Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.deepOrange,
                  child: const Text('我们是共产主义接班人'),
                ),
              ),
            ),
            Image.asset('assets/images/1.png'),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.translate(
                offset: Offset(-10, -6),
                child: Text("test Transform"),
              ),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
//                      recognizer: _tapRecognizer
              ),
            ])),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Text(" -*- " * 10),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              //将Transform.rotate换成RotatedBox
              child: RotatedBox(
                quarterTurns: 1, //旋转90度(1/4圈)
                child: Text("Hello world"),
              ),
            ),
            Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
          ])),
    );
  }
}

class LoginRoute extends StatelessWidget {
  TextEditingController _unameController = TextEditingController();

  @override
  void initState() {
    //监听输入改变
    _unameController.addListener(() {
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('用户登录'),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                controller: _unameController, //设置contr
                onChanged: (v) {
//              print("onChange: $v");
                },

                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
              Container(
                margin: EdgeInsets.only(top:50,left:50),
                constraints: BoxConstraints.tightFor(width: 200,height: 150),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.red,Colors.orange],
                    center: Alignment.topLeft,
                    radius: .98
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0,2.0),
                      blurRadius: 4.0
                    )
                  ]
                ),
                transform: Matrix4.rotationZ(.2), //卡片倾斜变换
                alignment: Alignment.center, //卡片内文字居中
                child: Text("登陆", style: TextStyle(color: Colors.white,fontSize: 40.0),),
              ),
            ],
          )),
    );
  }
}

class NewRoute extends StatelessWidget {
  NewRoute({
    Key key,
    @required this.msg,
  }) : super(key: key);
  final String msg;

  @override
  Widget build(BuildContext context) {
    var msg = ModalRoute
        .of(context)
        .settings
        .arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("pass parameters"),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
              mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
              children: <Widget>[
                Image.asset(
                  'assets/images/2.jpeg',
                ),
                Text(
                  msg,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      height: 1.2,
                      fontFamily: "Courier",
                      background: new Paint()
                        ..color = Colors.yellow,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed),
                ),
                RaisedButton(
                  onPressed: () =>
                      Navigator.pop(context, "I am returned value"),
                  child: Text("go back"),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title:Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.business), title:Text("News")),
            BottomNavigationBarItem(icon: Icon(Icons.question_answer), title:Text("About")),
          ],
          fixedColor: Colors.cyan,
          onTap: _onItemTapped,
        ),
    );
  }
  void _onItemTapped(int index) {
    print(index);
  }
}


