import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
      {required this.title,
      required this.heading,
      required this.subHeading,
      required this.onPress});

  static List<DashboardCategoriesModel> categories = [
    DashboardCategoriesModel(
        title: 'JS',
        heading: 'Java Script',
        subHeading: '10 Lessons',
        onPress: null),
    DashboardCategoriesModel(
        title: 'F', heading: 'Flutter', subHeading: '5 Lessons', onPress: null),
    DashboardCategoriesModel(
        title: 'H', heading: 'HTML', subHeading: '7 Lessons', onPress: null),
    DashboardCategoriesModel(
        title: 'K', heading: 'Kotlin', subHeading: '9 Lessons', onPress: null),
    DashboardCategoriesModel(
        title: 'P', heading: 'Python', subHeading: '15 Lessons', onPress: null),
  ];
}
