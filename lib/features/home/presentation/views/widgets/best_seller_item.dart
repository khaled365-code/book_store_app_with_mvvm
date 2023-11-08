
import 'package:books_app/core/utilis/app_routing.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilis/asset_data.dart';
import '../../../../../core/utilis/styles.dart';
import 'book_rate_item.dart';


class BestSellerItem extends StatelessWidget {


  final BookModel bookModel;

  const BestSellerItem({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push(AppRouter.Kbookdetailsview);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                    errorWidget: (context, url, error) => Center(
                      child: Icon(Icons.gpp_maybe),
                    ),
                    fit: BoxFit.fill,
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:
                  [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          bookModel.volumeInfo.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20.copyWith(
                            fontFamily: kSecondaryFont
                          ),
                        )),
                    const SizedBox(height: 3,),
                    Text(bookModel.volumeInfo.authors![0],style: Styles.textStyle14.copyWith(
                      color: Color(0xff707070)
                    ),),
                    const SizedBox(height: 3,),
                    Row(
                      children:
                      [
                        Text('Free book',style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                        )),

                        Spacer(),
                        BookRateItem(
                          rating: bookModel.volumeInfo.averageRating?? 2.5,
                          count: bookModel.volumeInfo.ratingsCount ?? 2530,
                        ),




                      ],
                    )





                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
