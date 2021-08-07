import 'package:flutter/material.dart';
import 'package:personal_website/ui/utils/resources/constants.dart';

class ExperienceWidget extends StatelessWidget {
  // top row
  final String jobTitle;
  final String companyName;
  // second row
  final String locationOfJob;
  final String durationAtJob;
  final String totalTime;
  // third row
  final List<String> responsibilitiesList;

  ExperienceWidget({
    required this.jobTitle,
    required this.companyName,
    required this.locationOfJob,
    required this.durationAtJob,
    required this.totalTime,
    required this.responsibilitiesList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                jobTitle + ', ',
                style: Constants.jobTitleStyle,
              ),
              SizedBox(width: 8),
              Text(
                companyName,
                style: Constants.companyNameStyle,
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                locationOfJob,
                style: Constants.locationStyle,
              ),
              greyDot(),
              Text(
                durationAtJob,
                style: Constants.durationStyle,
              ),
              greyDot(),
              Icon(
                Icons.timer,
                color: Colors.grey[600],
                size: 20,
              ),
              SizedBox(width: 2),
              Text(totalTime, style: Constants.durationStyle),
              Spacer(),
            ],
          ),
          SizedBox(height: 16),

          //TODO: decide on list builder or column of rows
        ],
      ),
    );
  }

  static Widget greyDot() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(
          Icons.circle,
          color: Colors.grey,
          size: 6,
        ),
      );
}
