import 'package:flutter/material.dart';

class Constants {
  static final mainTextStyle = TextStyle(
    fontSize: 24,
    letterSpacing: 1.5,
    wordSpacing: 2.0,
    height: 1.5,
    color: Colors.grey,
  );
  static const pageTransitionDuration = const Duration(milliseconds: 400);

  static final defaultInfoSectionTitleStyle = TextStyle(
      fontSize: 26,
      wordSpacing: 1.7,
      color: Colors.deepOrange,
      fontWeight: FontWeight.bold);

  static final secondaryInfoSectionTitleStyle = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static final degreeDisciplineStyle =
      secondaryInfoSectionTitleStyle.copyWith(fontSize: 24);

  static final schoolNameStyle = secondaryInfoSectionTitleStyle.copyWith(
      fontSize: 16, fontWeight: FontWeight.w300);

  static final durationAtSchoolStyle =
      secondaryInfoSectionTitleStyle.copyWith(fontSize: 14, color: Colors.grey);

  static final defaultSectionBodyStyle = TextStyle(
    fontSize: 14,
    color: Colors.black,
    wordSpacing: 1.2,
  );

  static final jobTitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final companyNameStyle = jobTitleStyle.copyWith(
      color: Colors.deepOrange, fontWeight: FontWeight.w400);

  static final locationStyle = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[600]);

  static final durationStyle =
      locationStyle.copyWith(color: Colors.grey, fontWeight: FontWeight.w300);

  static final stdPillTitleStyle = TextStyle(color: Colors.white, fontSize: 16);

  static final responsibilityListStyle =
      TextStyle(fontSize: 16, color: Colors.black);
}
