import 'package:flutter/material.dart';
import 'custom_view.dart';

void main() => runApp(new MaterialApp(home: new Application()));

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Custom view',
      home: Scaffold(
        body: customView(),
      ),
    );
  }
}

// Widget customView() {
//   return new IconButton(icon: new Icon(Icons.next_plan), onPressed: () {});
// }
