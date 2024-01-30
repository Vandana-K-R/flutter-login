import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sample/src/constants/sizes.dart';

class ForgotPasswordOtp extends StatelessWidget {
  const ForgotPasswordOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(defaultValue - 10),
            child: Column(
              children: [
                SizedBox(height: defaultValue + 100),
                Text("CO\nDE",
                    style:
                        TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
                SizedBox(height: defaultValue - 20),
                Text("Verification",
                    style: TextStyle(
                        fontSize: defaultValue - 10,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: defaultValue - 20),
                Text(
                  'Enter the verification code sent at\nvandanapoojar018@gmail.com',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: defaultValue),
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  showFieldAsBox: true,
                  onSubmit: (code) {
                    print(code);
                  },
                ),
                SizedBox(height: defaultValue),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Next'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
