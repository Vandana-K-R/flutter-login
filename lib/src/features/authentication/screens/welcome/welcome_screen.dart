import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/screens/login/login_screen.dart';
import 'package:sample/src/features/authentication/screens/sign_up/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? secondaryColor : whiteColor,
      body: Container(
          padding: EdgeInsets.all(defaultValue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(splashImage),
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(welcomeTitle,
                      style: Theme.of(context).textTheme.displaySmall),
                  Text(
                    welcomeSubTitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(loginText.toUpperCase()),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: Text(signUpText.toUpperCase()),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
