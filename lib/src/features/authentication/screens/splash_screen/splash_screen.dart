import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              top: 170,
              left: splashController.animate.value ? defaultValue : -80,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appName,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(appTagLine,
                        style: Theme.of(context).textTheme.headline4)
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              bottom: splashController.animate.value ? 150 : 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image(
                  image: AssetImage(splashImage),
                  height: 400,
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              bottom: splashController.animate.value ? 40 : 0,
              right: defaultValue,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: splashContainerScreenSIze,
                  height: splashContainerScreenSIze,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
