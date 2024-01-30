import 'package:flutter/material.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/core/screens/widgets/appbar.dart';
import 'package:sample/src/features/core/screens/widgets/banners.dart';
import 'package:sample/src/features/core/screens/widgets/categories.dart';
import 'package:sample/src/features/core/screens/widgets/search_bar.dart';
import 'package:sample/src/features/core/screens/widgets/top_courses.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(dashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* ----  Heading  ----*/
                Text(
                  dashboardTitle,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  dashboardSubTitle,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                /* ----  Search Bar  ----*/
                SearchBarWidget(),
                SizedBox(
                  height: dashboardPadding,
                ),
                /* ----  Categories  ----*/
                CategoriesWidget(),
                SizedBox(height: dashboardPadding),
                /* ---- Banners  ----*/
                DashboardBannerWidget(),
                SizedBox(
                  height: dashboardPadding,
                ),
                //   /* -----  top courses  ---- */
                Text(
                  dashboardTopCourses,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                DashboardTopCoursesWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
