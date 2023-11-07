
import 'package:books_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';



class BooksAction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children:
        [
          Expanded(child: CustomButton(
            text: r'19.99$',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft:    Radius.circular(16),
      ),
          )),
          Expanded(child: CustomButton(
            text: 'Free Preview',
            textSize: 16,
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight:    Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
}
