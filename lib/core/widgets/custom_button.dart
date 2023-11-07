
import 'package:flutter/material.dart';

import '../utilis/styles.dart';


class CustomButton extends StatelessWidget {


  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? textSize;

  const CustomButton({super.key, required this.backgroundColor, required this.textColor,this.borderRadius, required this.text,this.textSize});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
           shape: RoundedRectangleBorder(
             borderRadius: borderRadius ?? BorderRadius.circular(16)
           ),
        ),
          onPressed: () {

          }, child: Text(text,
              style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.w900,fontSize: textSize))),
    );
  }
}
