import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  final String text;
  homePage(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Lam bui page'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
