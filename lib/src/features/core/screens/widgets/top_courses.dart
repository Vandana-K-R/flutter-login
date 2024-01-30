import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/features/core/models/dashboard/dashboard_top_courses_model.dart';

class DashboardTopCoursesWidget extends StatelessWidget {
  const DashboardTopCoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    final courses = DashboardTopCoursesModel.courses;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: courses[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor),
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              courses[index].title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isDarkMode ? secondaryColor : whiteColor),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Flexible(
                            child: Image(
                              image: AssetImage(courseImageOne),
                              height: 100,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder()),
                              onPressed: () {},
                              child: Icon(Icons.play_arrow)),
                          SizedBox(
                            width: dashboardCardPadding,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                courses[index].heading,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: isDarkMode
                                        ? secondaryColor
                                        : whiteColor),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                courses[index].subHeading,
                                style: TextStyle(
                                    fontSize: 17,
                                    color: isDarkMode
                                        ? secondaryColor
                                        : whiteColor),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
