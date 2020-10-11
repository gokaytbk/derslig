import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Rubic'),
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppHomeState();
  }
}

class _MyAppHomeState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: new IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 35.0,
          ),
          onPressed: () {
            // do it
          },
        ),
        title: Text(
          'DERSLIG',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              // do it
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
              size: 35.0,
            ),
            label: 'school',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              size: 35.0,
            ),
            label: 'school',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              size: 35.0,
            ),
            label: 'School',
          ),
        ],
        unselectedItemColor: Colors.blueAccent,
        selectedItemColor: Colors.blueAccent,
      ),
    );
  }
}

// decoration: BoxDecoration(
//   image: DecorationImage(
//     image: AssetImage("images/bg.png"),
//     fit: BoxFit.cover,
//   ),
// ),
// child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[
//     IconButton(
//     icon: Icon(
//       Icons.delete,
//       color: Colors.white,
//       size: 30.0,
//     ),
//     onPressed: () {
//       // do it
//     },
//   )
//   ],
// ),
