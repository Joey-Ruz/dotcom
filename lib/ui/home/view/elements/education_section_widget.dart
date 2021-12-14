import 'package:flutter/material.dart';
import 'package:personal_website/repo/entities/course.dart';
import 'package:personal_website/ui/utils/resources/constants.dart';

class StandardEducationWidget extends StatelessWidget {
  final String? degree;
  final String degreeDiscipline;
  final String schoolName;
  final String durationAtSchool;
  final List<Course> courseList;

  StandardEducationWidget({
    this.degree,
    required this.degreeDiscipline,
    required this.schoolName,
    required this.durationAtSchool,
    required this.courseList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (degree != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Text(
                  degree!,
                  style: Constants.secondaryInfoSectionTitleStyle
                      .copyWith(fontSize: 16),
                ),
                Spacer(),
              ],
            ),
          ),
        Row(
          children: [
            Text(
              degreeDiscipline,
              style: Constants.degreeDisciplineStyle,
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text(
              schoolName,
              style: Constants.schoolNameStyle,
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text(
              durationAtSchool,
              style: Constants.durationAtSchoolStyle,
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 16),
        // _buildCourseList(courseList),
      ],
    );
  }

  // static Widget _buildCourseList(List<Course> courseList) {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     itemCount: courseList.length,
  //     itemBuilder: (context, index) {
  //       return StandardPillSticker(
  //         title:
  //             courseList[index].courseID + "  " + courseList[index].courseName,
  //         pillColor: Colors.deepOrange,
  //         borderColor: Colors.white,
  //       );
  //     },
  //   );
  // }
}
