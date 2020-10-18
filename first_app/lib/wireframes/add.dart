import 'package:flutter/material.dart';

import 'home.dart';

class Add extends StatefulWidget {
  Add({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAddPage createState() => new _MyAddPage();
}

class _MyAddPage extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new MyApp())),
        ),
        backgroundColor: Colors.blue[900],
        title: Text("Sınıf ve Ders Seçiniz"),
      ),
    );
  }
}
