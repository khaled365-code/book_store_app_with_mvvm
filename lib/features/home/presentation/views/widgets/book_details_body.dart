import 'package:books_app/features/home/presentation/views/widgets/book_rating_details_section.dart';
import 'package:books_app/features/home/presentation/views/widgets/you_can_like_details_section.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';




class BookDetailsBody extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
            child: Column(
          children: [
            AppBarBookDetails(),
            BookRatingSection(),
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
