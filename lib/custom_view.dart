import "package:flutter/material.dart";

class customView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.yellow,
      child: Container(
        color: Colors.orange,
        margin: const EdgeInsets.all(15.0),
        child: Container(color: Colors.black,),
        ),
    );
  }
}
