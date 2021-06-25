import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new Application()));

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String text = "lam bui";
  bool showValue = false;
  int groupView = 0;
  double seekbar = 0.0;
  void medthoD(value) {
    setState(() {
      groupView = value;
      print(value);
    });
  }

  void setDataSeekbar(value) {
    setState(() {
      seekbar = value;
    });
  }

  List<int> _items = new List();
  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Dummy Application',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Dumy Application'),
          ),
          body: Column(
            children: <Widget>[
              TextField(
                onSubmitted: (String tx) {
                  setState(() {
                    text = tx;
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Type something', labelText: 'Fullname'),
              ),
              Text(text),
              RaisedButton(
                onPressed: null,
                child: Text('Raised Button'),
              ),
              FlatButton(onPressed: null, child: Text('lamsfasdfds')),
              Checkbox(
                  value: this.showValue,
                  onChanged: (bool value) {
                    setState(() {
                      this.showValue = value;
                      print(value);
                    });
                  }),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      value: 1,
                      groupValue: groupView,
                      onChanged: (int value) {
                        medthoD(value);
                      }),
                  Radio(
                      value: 2,
                      groupValue: groupView,
                      onChanged: (int value) {
                        medthoD(value);
                      }),
                  Radio(
                      value: 3,
                      groupValue: groupView,
                      onChanged: (int value) {
                        medthoD(value);
                      })
                ],
              ),
              Slider(
                  value: 5.0,
                  min: 1.0,
                  max: 10.0,
                  onChanged: (double value) {
                    setDataSeekbar(value);
                  }),
              Text("This is value : $seekbar")
            ],
          ),
        ));
  }
}
