import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';
import 'package:sample/src/features/authentication/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';
import 'package:sample/src/features/authentication/screens/forgot_password/forgot_password_options/forgot_password_button_widget.dart';
import 'package:sample/src/features/authentication/screens/forgot_password/forgot_password_otp/forgot_password_otp_screen.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: EdgeInsets.all(defaultValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              forgotPasswordTitle,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              forgotPasswordSubTitle,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 25),
            ForgotPasswordButtonWidget(
                onTap: () {
                  Get.to(() => ForgotPasswordMail());
                },
                icon: Icons.mail_outline_outlined,
                title: email,
                subTitle: resetViaEmail),
            SizedBox(height: 25.0),
            ForgotPasswordButtonWidget(
                onTap: () {
                  Get.to(() => ForgotPasswordOtp());
                },
                icon: Icons.mobile_friendly_outlined,
                title: phoneNo,
                subTitle: resetViaPhone)
          ],
        ),
      ),
    );
  }
}
