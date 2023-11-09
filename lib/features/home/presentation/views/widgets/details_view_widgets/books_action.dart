
import 'package:books_app/core/helper/functions/launch_url_custom.dart';
import 'package:books_app/core/widgets/custom_button.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class BooksAction extends StatelessWidget {


  final BookModel bookModel;

  const BooksAction({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children:
        [
          Expanded(child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft:    Radius.circular(16),
      ),
          )),
          Expanded(child: CustomButton(
            onPressed: () async
            {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            text: getText(),
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

  String getText()
  {
    if (bookModel.volumeInfo.previewLink==null)
      {
        return ' Book Not Available';
      }
    else
      {
        return 'Free Preview';
      }


  }
}
