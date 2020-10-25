import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'add.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4167b2),
        title: Image.asset('images/logo.png', width: 150, fit: BoxFit.fill),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
              size: 32.0,
            ),
            onPressed: () {
              // do it
            },
          )
        ],
      ),
      drawer: new Drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => new Add())),
        child: Icon(
          Icons.add,
          size: 35,
        ),
        backgroundColor: Color(0xff4167b2),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.my_library_books, 1),
          buildNavBarItem(Icons.notifications_rounded, 2),
          buildNavBarItem(
            Icons.menu_book_rounded,
            3,
          ),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff2f497c).withOpacity(1),
                  Color(0xff2f497c).withOpacity(0.2),
                  Color(0xff2f497c).withOpacity(0),
                  Color(0xff2f497c).withOpacity(0),
                  Color(0xff2f497c).withOpacity(0),
                  Color(0xff2f497c).withOpacity(0),
                  Color(0xff4167b2).withOpacity(0.0),
                  Color(0xff4167b2).withOpacity(0.0),
                  Color(0xff4167b2).withOpacity(0.0),
                  Color(0xff4167b2).withOpacity(0.0),
                  Color(0xff4167b2).withOpacity(0.0),
                  Color(0xff4167b2).withOpacity(0.0),
                  Color(0xff4167b2).withOpacity(0.0),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                // color: index == _selectedItemIndex
                //     ? Colors.grey[300]
                //     : Colors.blue[900]
              )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? Color(0xff4167b2)
              : Colors.grey[800],
          size: 30,
        ),
      ),
    );
  }
}
