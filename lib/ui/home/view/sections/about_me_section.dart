import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/view/elements/about_me_rich_text.dart';
import 'package:personal_website/ui/home/view/sections/info_section.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoSection(
      titleQuestion: Strings.whoAmI,
      titleAnswer: Strings.personalSummary,
      iconData: Icons.person_outline,
      paddingBeforeFirstChild: 16,
      child: AboutMeBody(),
    );
  }
}
