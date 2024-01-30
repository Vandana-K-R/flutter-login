import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/screens/login/login_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                label: Text(fullName),
                prefixIcon: Icon(
                  Icons.person_outline_outlined,
                  color: isDarkMode ? whiteColor : secondaryColor,
                )),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
                label: Text(email),
                prefixIcon: Icon(Icons.email_outlined,
                    color: isDarkMode ? whiteColor : secondaryColor)),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
                label: Text(phoneNo),
                prefixIcon: Icon(Icons.numbers_outlined,
                    color: isDarkMode ? whiteColor : secondaryColor)),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
                label: Text(password),
                prefixIcon: Icon(Icons.key_off_outlined,
                    color: isDarkMode ? whiteColor : secondaryColor)),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: Text(signUpText.toUpperCase())),
          )
        ],
      )),
    );
  }
}
