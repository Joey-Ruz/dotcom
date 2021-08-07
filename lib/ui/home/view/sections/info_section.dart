import 'package:flutter/material.dart';
import 'package:personal_website/ui/utils/resources/constants.dart';

class InfoSection extends StatelessWidget {
  final IconData iconData;
  final String titleQuestion;
  final String titleAnswer;
  final Widget child;
  final double paddingBeforeFirstChild;

  InfoSection(
      {required this.iconData,
      required this.titleQuestion,
      required this.titleAnswer,
      required this.child,
      this.paddingBeforeFirstChild = 18});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  iconData,
                  size: 32,
                  color: Colors.deepOrange,
                ),
                SizedBox(width: 16),
                Text(
                  titleQuestion,
                  style: Constants.defaultInfoSectionTitleStyle,
                ),
                SizedBox(width: 18),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    titleAnswer,
                    style: Constants.secondaryInfoSectionTitleStyle,
                  ),
                ),
              ],
            ),
            SizedBox(height: paddingBeforeFirstChild),
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
