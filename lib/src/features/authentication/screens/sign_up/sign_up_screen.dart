import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/common_widgets/form/form_footer_widget.dart';
import 'package:sample/src/common_widgets/form/form_header_widget.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/screens/login/login_screen.dart';
import 'package:sample/src/features/authentication/screens/sign_up/widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultValue - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                  size: size,
                  formImage: splashImage,
                  formTitle: signUpTitle,
                  formSubTitle: signUpSubTitle),
              SignUpFormWidget(),
              FormFooterWidget(
                bottomtext: alreadyAUserText,
                signOrLogintext: loginText,
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
