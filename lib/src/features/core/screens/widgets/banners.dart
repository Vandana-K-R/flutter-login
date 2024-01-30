import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/text_strings.dart';

class DashboardBannerWidget extends StatelessWidget {
  const DashboardBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: cardBgColor),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Image(image: AssetImage(bookmarkIcon))),
                  Flexible(
                    child: Image(
                      image: AssetImage(javaImage),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                dashboardBannerTitle1,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? secondaryColor : whiteColor),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(dashboardBannerSubTitle,
                  style: TextStyle(
                    color: isDarkMode ? secondaryColor : whiteColor,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis)
            ]),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Image(image: AssetImage(bookmarkIcon))),
                        Flexible(
                          child: Image(
                            image: AssetImage(webDevImage),
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      dashboardBannerTitle2,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: isDarkMode ? secondaryColor : whiteColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(dashboardBannerSubTitle,
                        style: TextStyle(
                          fontSize: 15,
                          color: isDarkMode ? secondaryColor : whiteColor
                        ),
                        overflow: TextOverflow.ellipsis)
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: Text(dashboardButton)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
