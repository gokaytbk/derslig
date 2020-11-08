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
  int seciliSayfa = 0;
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
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
        child: sayfaGoster(seciliSayfa),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey[200]),
        child: BottomNavigationBar(
          currentIndex: seciliSayfa,
          onTap: sayfaDegistir,
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xff4167b2),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 27,
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Anasayfa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.article,
                size: 27,
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Ders Programı',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 27,
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Bildirimler',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_phone,
                size: 27,
              ),
              // ignore: deprecated_member_use
              title: Text(
                'Derslig',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sayfaGoster(int seciliSayfa) {
    // ignore: unrelated_type_equality_checks
    if (seciliSayfa == 0) {
      return sayfa1();
      // ignore: unrelated_type_equality_checks
    } else if (seciliSayfa == 1) {
      return sayfa2();
      // ignore: unrelated_type_equality_checks
    } else if (seciliSayfa == 2) {
      return sayfa3();
      // ignore: unrelated_type_equality_checks
    } else if (seciliSayfa == 3) {
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
          child: Text("yar"),
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
    return Container(
      child: Center(
        child: Text("say"),
      ),
    );
  }

  Widget sayfa3() {
    return Container(
      child: Center(
        child: Text("fa"),
      ),
    );
  }

  Widget sayfa4() {
    return Container(
      child: Center(
        child: Text("ana"),
      ),
    );
  }
}
