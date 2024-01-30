import 'package:flutter/material.dart';
import 'package:sample/src/common_widgets/form/form_header_widget.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/sizes.dart';
import 'package:sample/src/constants/text_strings.dart';

class ForgotPasswordMail extends StatelessWidget {
  const ForgotPasswordMail({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: defaultValue),
            child: Column(
              children: [
                FormHeaderWidget(
                  size: size,
                  formImage: forgotPasswordImage,
                  formTitle: forgotPasswordTitle,
                  formSubTitle: forgotPasswordSubTitle,
                  heightBetween: defaultValue,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text(email),
                          hintText: email,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
