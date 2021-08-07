import 'package:flutter/material.dart';

class RectangularImage extends StatelessWidget {
  final String assetPath;
  final double width;
  final double height;
  final Border? border;

  RectangularImage(
      {required this.assetPath,
      this.width = 650,
      this.height = 300,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      height: 300,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(assetPath),
        ),
        border: border ??
            Border.all(
              color: Colors.black38,
              width: 1.5,
            ),
      ),
    );
  }
}
