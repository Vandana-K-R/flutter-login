import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/features/core/models/dashboard/dashboard_categories_model.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    final categories = DashboardCategoriesModel.categories;
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: categories[index].onPress,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: cardBgColor, borderRadius: BorderRadius.circular(12)),
              child: SizedBox(
                width: 170,
                height: 70,
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryColor),
                      child: Center(
                        child: Text(
                          categories[index].title,
                          style: TextStyle(
                              fontSize: 25,
                              color: whiteColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            categories[index].heading,
                            style: TextStyle(
                                color: isDarkMode ? secondaryColor : whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(categories[index].subHeading,
                              style: TextStyle(
                                  fontSize: 15,
                                  color:
                                      isDarkMode ? secondaryColor : whiteColor),
                              overflow: TextOverflow.ellipsis)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 60,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 55,
        //           height: 60,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: secondaryColor),
        //           child: Center(
        //             child: Text(
        //               'JS',
        //               style: TextStyle(
        //                   fontSize: 25,
        //                   color: whiteColor,
        //                   fontWeight: FontWeight.w500),
        //             ),
        //           ),
        //         ),
        //         SizedBox(width: 10),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 'Java Script',
        //                 style: TextStyle(
        //                     fontSize: 18, fontWeight: FontWeight.bold),
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text('10 Lessons',
        //                   style: TextStyle(fontSize: 15),
        //                   overflow: TextOverflow.ellipsis)
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
