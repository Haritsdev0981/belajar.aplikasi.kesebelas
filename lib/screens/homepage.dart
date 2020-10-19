import 'package:aplikasi_kesebelas/data/data_motivasi.dart';
import 'package:aplikasi_kesebelas/widget/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: dataMotivasi(),
    );
  }
}
