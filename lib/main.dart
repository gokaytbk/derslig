import 'package:flutter/material.dart';
import './wireframes/home.dart';
import './wireframes/add.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => MyApp(),
        "/add": (context) => Add(),
      },
    ),
  );
}
