import 'package:flutter/material.dart';

import '../../../../../../core/utilis/book_model/book_model.dart';
import 'appbar_book_details.dart';
import 'book_rating_section.dart';
import 'suggestions_section.dart';




class BookDetailsBody extends StatelessWidget {


  final BookModel bookModel;

  const BookDetailsBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
            child: Column(
          children: [
            AppBarBookDetails(),
            BookRatingSection(
              bookModel: bookModel,
            ),
            Expanded(
              child: SuggestionsSection(
                bookModel: bookModel,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ))
      ],
    );
  }
}
