import 'package:aplikasi_kesebelas/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainDart());

class MainDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuotesNich',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: HomePage(),
    );
  }
}
