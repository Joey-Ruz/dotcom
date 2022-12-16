import 'package:flutter/material.dart';

class StandardCircularImage extends StatelessWidget {
  final double diameter;
  final String assetPath;
  final BoxDecoration? decoration;
  final Color borderColor;

  StandardCircularImage({
    required this.assetPath,
    this.diameter = 200,
    this.decoration,
    this.borderColor = Colors.black38,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: decoration ??
          BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(assetPath)),
            border: Border.all(color: borderColor, width: 2.5),
          ),
    );
  }
}
