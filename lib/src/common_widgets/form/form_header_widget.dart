import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  final String formImage;
  final String formTitle;
  final String formSubTitle;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final Color? imageColor;
  final TextAlign? textAlign;
  const FormHeaderWidget({
    super.key,
    required this.size,
    required this.formImage,
    required this.formTitle,
    required this.formSubTitle,
    this.imageHeight = 0.2,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.imageColor, 
     this.textAlign,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(formImage),color: imageColor,
          height: size.height * 0.21,
        ),
        Text(formTitle,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        Text(formSubTitle, style: TextStyle(fontSize: 16),textAlign: textAlign,),
      ],
    );
  }
}
