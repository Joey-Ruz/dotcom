import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/view/elements/experience_widget.dart';
import 'package:personal_website/ui/home/view/sections/info_section.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InfoSection(
        iconData: Icons.apartment,
        titleQuestion: Strings.whatHaveIDone,
        titleAnswer: Strings.jobExperience,
        paddingBeforeFirstChild: 28,
        child: Column(
          children: [
            ExperienceWidget(
              jobTitle: 'Software Engineer',
              companyName: 'VerifID Mobile',
              locationOfJob: 'Chicago, IL',
              durationAtJob: "July 2020 - Present",
              totalTime: "1 yr",
              responsibilitiesList: Strings.responsibilityListForVerifID,
            ),
            ExperienceWidget(
              jobTitle: 'Technical Writer & Jr. Data Engineer',
              companyName: 'ULAP',
              locationOfJob: 'Chicago, IL',
              durationAtJob: "December 2019 - June 2020",
              totalTime: "7 months",
              responsibilitiesList: Strings.responsibilityListForULAP,
            ),
          ],
        ),
      ),
    );
  }
}
