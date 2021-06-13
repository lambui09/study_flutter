import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new Application()));

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application>
    with TickerProviderStateMixin {
  String text = "lam bui";
  TabController tabController, control;

  List<int> _items = new List();
  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
    tabController = TabController(length: 3, vsync: this);

    control = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Bui Duc Lam"),
        leading: new Icon(Icons.menu),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  text = "text test";
                });
              }),
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                setState(() {
                  text = "close buttom";
                });
              })
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.supervisor_account),
            ),
            Tab(
              icon: Icon(Icons.close),
            ),
          ],
          controller: control,
        ),
      ),
      body: new TabBarView(
        controller: control,
        children: <Widget>[
          Center(
            child: Text("Welcome to home"),
          ),
          Center(
            child: Text("Welcome to user account"),
          ),
          Center(
            child: Text("Welcome to close"),
          ),
        ],
      ),


      bottomNavigationBar: Material(
        color: Colors.red,
        child: TabBar(
          controller: control,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.support_agent_rounded),),
            Tab(icon: Icon(Icons.close),)
          ],
        ),
      ),
    );
  }
}
