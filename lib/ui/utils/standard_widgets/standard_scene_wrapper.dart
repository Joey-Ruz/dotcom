import 'package:flutter/material.dart';

class StandardSceneWrapper extends StatelessWidget {
  final bool isWaiting;

  StandardSceneWrapper({required this.isWaiting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    );
  }
}
