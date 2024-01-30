import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:sample/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThisAppTheme.lightTheme,
      darkTheme: ThisAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}
