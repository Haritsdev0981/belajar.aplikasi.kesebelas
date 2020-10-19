import 'package:flutter/material.dart';

Widget myAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //untuk menambahkan text, dan lain lain
        Text('Quotes',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        Text('Nich',
            style: TextStyle(
                color: Colors.deepOrangeAccent, fontWeight: FontWeight.w600))
      ],
    ),
    elevation: 0.0,
  );
}
