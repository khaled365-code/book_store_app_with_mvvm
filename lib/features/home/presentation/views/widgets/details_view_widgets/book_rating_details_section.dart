
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilis/asset_data.dart';
import '../../../../../../core/utilis/styles.dart';
import '../home_view_widgets/book_rate_item.dart';
import 'books_action.dart';

class BookRatingSection extends StatelessWidget {

  final BookModel bookModel;

  const BookRatingSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width *.25;
    return Column(
      children:
      [
        Padding(
          padding: EdgeInsets.only(left: width, right: width),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AspectRatio(
                aspectRatio: 3.1/4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? 'https://i.stack.imgur.com/OwMsI.jpg',
                  errorWidget: (context, url, error) => Center(child: Icon(Icons.gpp_maybe),),
                  fit: BoxFit.fill,


                )
            ),
          )),
        const SizedBox(
          height: 30,
        ),
        Text(
          bookModel.volumeInfo.title!,
          maxLines: 2,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRateItem(
          count: bookModel.volumeInfo.ratingsCount ?? 2550,
          rating: bookModel.volumeInfo.averageRating?? 2.5,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        BooksAction(
          bookModel: bookModel,
        ),

      ],
    );
  }
}
