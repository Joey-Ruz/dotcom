import 'package:flutter/material.dart';

class StandardPillSticker extends StatelessWidget {
  final Icon? icon;
  final String title;
  final TextStyle titleStyle;
  final Color pillColor;
  final Color borderColor;
  static const defaultStyle = TextStyle(color: Colors.white, fontSize: 16);

  StandardPillSticker({
    required this.title,
    required this.pillColor,
    this.icon,
    this.borderColor = Colors.white,
    this.titleStyle = defaultStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: pillColor,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: borderColor, width: 1.5),
          color: pillColor,
        ),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: icon,
              ),
            SizedBox(width: 4),
            Text(
              title,
              style: titleStyle,
            ),
            SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
