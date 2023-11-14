import 'package:flutter/material.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';
import 'package:personal_website/ui/utils/standard_widgets/standard_pill_sticker.dart';

class BottomInfo extends StatelessWidget {
  final BuildContext context;
  BottomInfo({required this.context});

  @override
  Widget build(BuildContext context) {
    bool isCondensed = MediaQuery.of(context).size.width < 940;
    return isCondensed ? condensedLayout() : normalLayout();
  }

  Widget condensedLayout() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        emailWidget(),
        SizedBox(height: 8),
        locationWidget(),
      ],
    );
  }

  Widget normalLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        locationWidget(),
        SizedBox(width: 8),
        emailWidget(),
      ],
    );
  }

  Widget locationWidget() {
    return StandardPillSticker(
      title: Strings.greaterChicagoland,
      pillColor: Colors.blueAccent,
      icon: Icon(
        Icons.location_on_sharp,
        color: Colors.white,
      ),
    );
  }

  Widget emailWidget() {
    return StandardPillSticker(
      title: Strings.ruzJoeyGmail,
      pillColor: Colors.blueAccent,
      icon: Icon(
        Icons.email,
        color: Colors.white,
      ),
    );
  }
}
