import 'package:flutter/material.dart';
import 'package:sample/src/constants/colors.dart';
import 'package:sample/src/constants/image_strings.dart';
import 'package:sample/src/constants/text_strings.dart';

class FormFooterWidget extends StatelessWidget {
  final String bottomtext;
  final String signOrLogintext;
  final void Function()? onPressed;
   FormFooterWidget(
      {super.key, required this.bottomtext, required this.signOrLogintext,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('OR'),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(googleLogo),
                height: 25,
              ),
              onPressed: () {},
              label: Text(signInWithGoogle)),
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: onPressed,
          child: Text.rich(
            TextSpan(
              text: bottomtext,
              style: TextStyle(
                  fontSize: 20,
                  color: isDarkMode ? whiteColor : secondaryColor),
              children: [
                TextSpan(
                    text: signOrLogintext, style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
