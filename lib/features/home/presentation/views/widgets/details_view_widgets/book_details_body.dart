import 'package:flutter/material.dart';

import '../../../../data/models/book_model/book_model.dart';
import 'custom_book_details_appbar.dart';
import 'book_rating_details_section.dart';
import 'listview_details_section.dart';




class BookDetailsBody extends StatelessWidget {


  final BookModel bookModel;

  const BookDetailsBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
            child: Column(
          children: [
            AppBarBookDetails(),
            BookRatingSection(
              bookModel: bookModel,
            ),
            Expanded(
              child: const SizedBox(
                height: 35,
              ),
            ),
            SuggestionsSection(),
            const SizedBox(
              height: 25,
            ),
          ],
        ))
      ],
    );
  }
}
