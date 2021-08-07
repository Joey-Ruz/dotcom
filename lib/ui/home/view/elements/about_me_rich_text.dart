import 'package:flutter/material.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';

class AboutMeBody extends StatelessWidget {
  const AboutMeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: Strings.personalSummaryBody,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                wordSpacing: 1.5,
              ),
            ),
          ),
          SizedBox(height: 32),
          Text(
            "Technology: ",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                wordSpacing: 1.5,
              ),
              children: [
                TextSpan(
                  text: Strings.personalTechnologyPt1,
                ),
                TextSpan(
                  text: Strings.personalTechnologyPt2,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: Strings.personalTechnologyPt3,
                ),
                TextSpan(
                  text: 'Quick',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: 'Consent',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: Strings.personalTechnologyPt4,
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Text(
            "Physical Activity: ",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: Strings.personalPhysicalActivity,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                wordSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
