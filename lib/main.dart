import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new Application()));

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String text = "lam bui";

  List<int> _items = new List();
  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
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
      ),
      body: new Center(
        child: new Text(text),
      ),
    );
  }
}
