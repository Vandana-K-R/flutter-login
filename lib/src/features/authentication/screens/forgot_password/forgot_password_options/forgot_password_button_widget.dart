import 'package:flutter/material.dart';

class ForgotPasswordButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final void Function() onTap;
  const ForgotPasswordButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Row(
          children: [
            Icon(icon, size: 60.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
