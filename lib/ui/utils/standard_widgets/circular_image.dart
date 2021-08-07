import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final double width;
  final double height;
  final String assetPath;
  final BoxDecoration? decoration;

  CircularImage(
      {required this.assetPath,
      this.width = 200,
      this.height = 200,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration ??
          BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(assetPath)),
            border: Border.all(color: Colors.black38, width: 2.5),
          ),
    );
  }
}
