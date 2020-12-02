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
  void initState() {
    super.initState();
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
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Dropdown(),
                new Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: buildList1(),
                  ),
                )
              ],
            ),
          )),
    );
  }

  List<bool> _list1 = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<ListTile> buildList1() {
    List<Widget> listButtons = List.generate(_list1.length, (i) {
      return SizedBox(
        width: MediaQuery.of(context).size.width / 2.2,
        child: Container(
          margin: EdgeInsets.all(5),
          child: RaisedButton(
            padding: const EdgeInsets.all(15),
            color: _list1[i] ? Color(0xff4167B2) : Color(0xff718DC6),
            onPressed: () {
              setState(() {
                _list1[i] = !_list1[i];
              });
            },
            child: Text(
              "Button $i",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      );
    });
    return listButtons;
  }

  List<bool> _list2 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<ListTile> buildList2() {
    List<Widget> listButtons = List.generate(_list2.length, (i) {
      return SizedBox(
        width: MediaQuery.of(context).size.width / 2.2,
        child: Container(
          margin: EdgeInsets.all(5),
          child: RaisedButton(
            padding: const EdgeInsets.all(15),
            color: _list2[i] ? Color(0xff4167B2) : Color(0xff718DC6),
            onPressed: () {
              setState(() {
                _list2[i] = !_list2[i];
              });
            },
            child: Text(
              "Button $i",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      );
    });
    return listButtons;
  }
}

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() {
    return _DropdownState();
  }
}

class _DropdownState extends State<Dropdown> {
  int _value;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
          primaryColor: Colors.grey[100],
          accentColor: Colors.grey[200],
          hintColor: Colors.grey[800]),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        alignment: Alignment.topCenter,
        child: DropdownButton<int>(
          isExpanded: true,
          items: [
            buildDropdownMenuItem(0, "1. sinif"),
            buildDropdownMenuItem(1, "2. sinif"),
            buildDropdownMenuItem(2, "3. sinif"),
            buildDropdownMenuItem(3, "4. sinif"),
            buildDropdownMenuItem(4, "5. sinif"),
            buildDropdownMenuItem(5, "6. sinif"),
            buildDropdownMenuItem(6, "7. sinif"),
            buildDropdownMenuItem(7, "8. sinif"),
            buildDropdownMenuItem(8, "9. sinif"),
            buildDropdownMenuItem(9, "10. sinif"),
            buildDropdownMenuItem(10, "11. sinif"),
            buildDropdownMenuItem(11, "12. sinif"),
          ],
          onChanged: (int value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('Sınıf Seçiniz'),
          value: _value,
        ),
      ),
    );
  }

  DropdownMenuItem<int> buildDropdownMenuItem(
      int dropdownValue, String dropdownClass) {
    return DropdownMenuItem<int>(
      child: Text(
        dropdownClass,
        style: TextStyle(color: Colors.grey[800]),
      ),
      value: dropdownValue,
    );
  }
}
