import 'package:flutter/material.dart';
import 'package:todoapp/model/globals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Todo Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: [
                TabBarView(
                  children: [
                    new Container(
                      color: darkGreyColor,
                    ),
                    new Container(
                      color: Colors.orange,
                    ),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.only(left: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Intray",
                        style: intrayTitleStyle,
                      ),
                      Container()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 130,
                      left: (MediaQuery.of(context).size.width * 0.5) - 40),
                  child: FloatingActionButton(
                    child: Container(
                        width: 80,
                        height: 80,
                        child: Icon(Icons.add, size: 50)),
                    backgroundColor: Colors.red,
                    onPressed: () {},
                  ),
                )
              ],
            ),
            appBar: AppBar(
                elevation: 0,
                title: new TabBar(
                  tabs: [
                    Tab(
                      icon: new Icon(Icons.home),
                    ),
                    Tab(
                      icon: new Icon(Icons.rss_feed),
                    ),
                    Tab(
                      icon: new Icon(Icons.perm_identity),
                    ),
                  ],
                  labelColor: darkGreyColor,
                  unselectedLabelColor: Colors.blue,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  indicatorPadding: EdgeInsets.all(5.0),
                ),
                backgroundColor: Colors.white),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
