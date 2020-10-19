import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl, namaMotiv;

  CategoryItem(this.imageUrl, this.namaMotiv);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
          ),
        ],
      ),
    );
  }
}
