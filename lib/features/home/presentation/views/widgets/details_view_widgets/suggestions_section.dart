
import 'package:books_app/core/utilis/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilis/styles/styles.dart';
import 'similar_books_list_view.dart';

class SuggestionsSection extends StatelessWidget {

  final BookModel bookModel;

  const SuggestionsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context)
  {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children:
       [
         Padding(
           padding: const EdgeInsets.only(left: 16,bottom: 10,top: 15),
           child: Text(
             'You can also like',
             style:
             Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
           ),
         ),
         const SizedBox(
           height: 4,
         ),
         SimilarBooksListView(
           bookModel: bookModel ,
         ),
       ],
     );
  }
}
