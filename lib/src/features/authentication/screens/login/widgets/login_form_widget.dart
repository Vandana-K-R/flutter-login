import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/screens/forgot_password/forgot_password_options/show_modal_bottom_sheet.dart';
import 'package:sample/src/features/core/screens/dashboard/dashboard_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline_outlined,
                color: isDarkMode ? whiteColor : secondaryColor,
              ),
              labelText: email,
              hintText: email,
              hintStyle: TextStyle(fontSize: 20),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.key_off_outlined,
                  color: isDarkMode ? whiteColor : secondaryColor),
              labelText: password,
              hintText: password,
              hintStyle: TextStyle(fontSize: 20),
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.remove_red_eye_sharp),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: Text(
                forgotPassword,
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => DashboardScreen());
              },
              child: Text(loginText.toUpperCase()),
            ),
          )
        ],
      ),
    ));
  }
}
