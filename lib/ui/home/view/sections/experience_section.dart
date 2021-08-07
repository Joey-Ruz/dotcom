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
              durationAtJob: "December 1st 2020 - January 1st, 2021",
              totalTime: "1 yr",
              responsibilitiesList: ['Responsibility 1', 'Responsibility 2'],
            )
          ],
        ),
      ),
    );
  }
}
