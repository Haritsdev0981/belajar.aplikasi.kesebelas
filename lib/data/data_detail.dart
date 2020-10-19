import 'package:aplikasi_kesebelas/widget/widget.dart';
import 'package:flutter/material.dart';

class DataDetail extends StatelessWidget {
  final String gambarDetail;
  final String judulDetail;
  final String isiDetail;

  const DataDetail(
      {Key key, this.gambarDetail, this.judulDetail, this.isiDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                gambarDetail,
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 10.0, bottom: 5.0),
              child: Text(
                judulDetail,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 10.0),
              child: Text(
                isiDetail,
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
