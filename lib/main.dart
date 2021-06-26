import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(new MaterialApp(home: new Application()));

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String text = "lam bui";

  List<int> _items = new List();
  final GlobalKey<ScaffoldState> _skey = GlobalKey();
  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
  }

  void showSnackBar() {
    _skey.currentState
        .showSnackBar(SnackBar(content: Text("Internet not connect")));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      key: _skey,
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Bui Duc Lam"),
        leading: new Icon(Icons.menu),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Bui Duc Lam"),
              accountEmail: Text("buiduclam09@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("L"),
              ),
              decoration: BoxDecoration(color: Colors.orange),
            ),
            ListTile(
              title: Text("Page 1"),
              trailing: Icon(Icons.notifications_active_rounded),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => homePage("Hom page"),
              )),
            ),
            ListTile(
              title: Text("Page 2"),
              trailing: Icon(Icons.alarm),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () => showSnackBar(),
          child: Text("Internet no connect"),
        ),
      ),
    );
  }
}
