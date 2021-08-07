import 'package:flutter/material.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';
import 'package:personal_website/ui/utils/standard_widgets/circular_image.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        CircularImage(assetPath: Strings.joeyVinka_AssetPath),
        SizedBox(height: 16),
        Text(
          Strings.joe_y,
          style: TextStyle(
            fontSize: 44,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8),
        Text(Strings.descriptorUnderName),
      ],
    );
  }
}
