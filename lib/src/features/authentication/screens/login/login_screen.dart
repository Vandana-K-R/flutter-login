import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/common_widgets/form/form_footer_widget.dart';
import 'package:sample/src/common_widgets/form/form_header_widget.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:sample/src/features/authentication/screens/sign_up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultValue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                  size: size,
                  formImage: splashImage,
                  formTitle: loginTitle,
                  formSubTitle: loginSubTitle),
              const LoginForm(),
              FormFooterWidget(
                bottomtext: alreadyHaveAnAccount,
                signOrLogintext: signUpText,
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
