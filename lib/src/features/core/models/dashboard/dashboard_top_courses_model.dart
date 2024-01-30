import 'package:flutter/material.dart';

class DashboardTopCoursesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopCoursesModel(
      {required this.title,
      required this.heading,
      required this.subHeading,
      required this.onPress});

  static List<DashboardTopCoursesModel> courses = [
    DashboardTopCoursesModel(
        title: 'Flutter Crash Course',
        heading: '3 Sections',
        subHeading: 'Programming Language',
        onPress: null),
    DashboardTopCoursesModel(
        title: 'HTML/CSS Course',
        heading: '4 Sections',
        subHeading: 'Programming Language',
        onPress: null),
    DashboardTopCoursesModel(
        title: 'Material Design Course',
        heading: '6 Sections',
        subHeading: 'Programming Language',
        onPress: null),
  ];
}
