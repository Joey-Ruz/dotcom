import 'package:flutter/material.dart';

class StandardDivider extends StatelessWidget {
  final double indent;
  final double topPadding;
  final double bottomPadding;
  final Color color;

  StandardDivider({
    this.indent = 150,
    this.topPadding = 24,
    this.bottomPadding = 24,
    this.color = Colors.black38,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
      child: Divider(
        color: color,
        thickness: 2,
        indent: indent,
        endIndent: indent,
      ),
    );
  }
}
