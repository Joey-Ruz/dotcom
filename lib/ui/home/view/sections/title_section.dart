import 'package:flutter/material.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';
import 'package:personal_website/ui/utils/standard_widgets/standard_circular_image.dart';
import 'package:personal_website/ui/utils/standard_widgets/standard_pill_sticker.dart';

class TitleSection extends StatelessWidget {
  final Function(int) sectionOnTap;
  final selectedIndex;
  const TitleSection({
    Key? key,
    required this.sectionOnTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 8.0),
        StandardCircularImage(
          assetPath: Strings.joeyVinka_AssetPath,
          diameter: 250,
        ),
        SizedBox(height: 16.0),
        Text(
          Strings.joe_y,
          style: TextStyle(
            fontSize: 44,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 24.0),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            subSection(
              sectionIndex: 0,
              title: "Software",
              icon: Icons.computer_outlined,
            ),
            SizedBox(width: 22.0),
            subSection(
              sectionIndex: 1,
              title: "Personal",
              icon: Icons.person,
            ),
          ],
        ),
      ],
    );
  }

  Widget subSection({
    required String title,
    required int sectionIndex,
    required IconData icon,
  }) {
    final bool isSelected = selectedIndex == sectionIndex;
    return InkWell(
      onTap: !isSelected ? () => sectionOnTap(sectionIndex) : null,
      child: StandardPillSticker(
        title: title,
        icon: Icon(icon, color: Colors.white),
        pillColor: isSelected ? Colors.deepOrange : Colors.grey.shade400,
      ),
    );
  }
}
