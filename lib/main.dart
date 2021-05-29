import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new Application()));

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();

}
class _ApplicationState extends State<Application>{

List<int> _items = new List();
  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: GridView.builder(
          itemCount: _items.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.blue,
              child: new Padding(padding: const EdgeInsets.all(20.0)),
            );
          }),
    );
  }
}

