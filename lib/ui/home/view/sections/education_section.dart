import 'package:flutter/material.dart';
import 'package:personal_website/repo/entities/course.dart';
import 'package:personal_website/ui/home/view/elements/education_section_widget.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';

import 'info_section.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoSection(
        titleQuestion: Strings.whatDoIKnow,
        titleAnswer: Strings.education,
        iconData: Icons.account_balance_outlined,
        paddingBeforeFirstChild: 24,
        child: Column(
          children: [
            StandardEducationWidget(
              degree: Strings.bachelorOfScience,
              degreeDiscipline: Strings.computerScienceAndMath,
              schoolName: Strings.loyola,
              durationAtSchool: Strings.loyolaDuration,
              courseList: [
                Course(courseID: 'LN123', courseName: 'Intro to Loyola')
              ],
            ),
            SizedBox(height: 40),
            StandardEducationWidget(
              degree: Strings.associates,
              degreeDiscipline: Strings.associatesOfScience,
              schoolName: Strings.moraineVally,
              durationAtSchool: Strings.moraineDuration,
              courseList: [],
            ),
            SizedBox(height: 40),
            StandardEducationWidget(
              degreeDiscipline: Strings.highSchoolDiploma,
              schoolName: Strings.brotherRice,
              durationAtSchool: Strings.brotherRiceGraduated,
              courseList: [],
            ),
          ],
        ));
  }
}
