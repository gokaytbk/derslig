import 'package:flutter/material.dart';

import 'home.dart';

class Add extends StatefulWidget {
  Add({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAddPage createState() => new _MyAddPage();
}

class _MyAddPage extends State<Add> {
  int _value = 1;

  bool matVal = false;
  bool turVal = false;
  bool ingVal = false;
  bool fenVal = false;
  bool sosVal = false;
  bool bedVal = false;
  bool dinVal = false;

  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            setState(() {
              switch (title) {
                case "Matematik":
                  matVal = value;
                  break;
                case "Türkçe":
                  turVal = value;
                  break;
                case "İngilizce":
                  ingVal = value;
                  break;
                case "Fen Bilimleri":
                  fenVal = value;
                  break;
                case "Sosyal":
                  sosVal = value;
                  break;
                case "Beden Eğitimi":
                  bedVal = value;
                  break;
                case "Din ve Ahlak Kültürü":
                  dinVal = value;
                  break;
              }
            });
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new MyApp())),
        ),
        backgroundColor: Color(0xff4167b2),
        title: Text("Sınıf ve Ders Seçiniz"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: buildDropdownButton(),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(),
                        ),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    checkbox("Matematik", matVal),
                                    checkbox("Türkçe", turVal),
                                    checkbox("İngilizce", ingVal),
                                    checkbox("Fen Bilimleri", fenVal),
                                    checkbox("Sosyal", sosVal),
                                    checkbox("Beden Eğitimi", bedVal),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownButton<int> buildDropdownButton() {
    return DropdownButton(
      items: [
        DropdownMenuItem(
          child: Text("1. Sınıf"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("2. Sınıf"),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text("3. Sınıf"),
          value: 3,
        ),
        DropdownMenuItem(
          child: Text("4. Sınıf"),
          value: 4,
        ),
        DropdownMenuItem(
          child: Text("5. Sınıf"),
          value: 5,
        ),
        DropdownMenuItem(
          child: Text("6. Sınıf"),
          value: 6,
        ),
        DropdownMenuItem(
          child: Text("7. Sınıf"),
          value: 7,
        ),
        DropdownMenuItem(
          child: Text("8. Sınıf"),
          value: 8,
        ),
        DropdownMenuItem(
          child: Text("9. Sınıf"),
          value: 9,
        ),
        DropdownMenuItem(
          child: Text("10. Sınıf"),
          value: 10,
        ),
        DropdownMenuItem(
          child: Text("11. Sınıf"),
          value: 11,
        ),
        DropdownMenuItem(
          child: Text("12. Sınıf"),
          value: 12,
        ),
      ],
      value: _value,
      onChanged: (value) {
        setState(
          () {
            _value = value;
          },
        );
      },
    );
  }
}
