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
    return _MyAppHome();
  }
}

class _MyAppHome extends State<MyAppHome> {
  int _seciliSayfa = 2;
  void sayfaDegistir(int index) {
    setState(() {
      _seciliSayfa = index;
    });
  }

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
        child: sayfaGoster(_seciliSayfa),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Icons.home, 0, true),
          buildNavBarItem(Icons.featured_play_list_rounded, 1, false),
          buildNavBarItem(Icons.notifications, 2, false),
          buildNavBarItem(Icons.vpn_key_rounded, 3, false),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _seciliSayfa = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        decoration: index == _seciliSayfa
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: Color(0xff4167b2),
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff4167b2).withOpacity(0.3),
                    Color(0xff4167b2).withOpacity(0.015)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                color: index == _seciliSayfa
                    ? Color(0xff4167b2)
                    : Colors.grey[200],
              )
            : BoxDecoration(),
        child: Icon(icon,
            color:
                index == _seciliSayfa ? Color(0xff4167b2) : Color(0xff4167b2),
            size: 30),
      ),
    );
  }

  Widget sayfaGoster(int _seciliSayfa) {
    // ignore: unrelated_type_equality_checks
    if (_seciliSayfa == 0) {
      return sayfa1();
      // ignore: unrelated_type_equality_checks
    } else if (_seciliSayfa == 1) {
      return sayfa2();
      // ignore: unrelated_type_equality_checks
    } else if (_seciliSayfa == 2) {
      return sayfa3();
      // ignore: unrelated_type_equality_checks
    } else if (_seciliSayfa == 3) {
      return sayfa4();
    }
    return Container();
  }

  Widget sayfa1() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Center(
          child: Text("ANASAYFA"),
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
    );
  }

  Widget sayfa2() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Center(
          child: Text("DERS PROGRAMI"),
        ),
      ),
    );
  }

  Widget sayfa3() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Center(
          child: Text("BILDIRIMLER"),
        ),
      ),
    );
  }

  Widget sayfa4() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Center(
          child: Text("CEVAP ANAHTARLARI"),
        ),
      ),
    );
  }
}
