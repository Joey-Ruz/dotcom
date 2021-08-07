import 'package:flutter/material.dart';

class StandardFullScreenLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueAccent.withOpacity(0.3),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
