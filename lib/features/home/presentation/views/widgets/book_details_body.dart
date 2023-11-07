import 'package:flutter/material.dart';

import '../../../../../core/utilis/asset_data.dart';
import '../../../../../core/utilis/styles.dart';
import 'book_rate_item.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';




class BookDetailsBody extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    var width=MediaQuery.of(context).size.width *.25;
    return Column(
      children:
      [
        AppBarBookDetails(),
        Padding(
          padding:  EdgeInsets.only(left: width,right: width),
          child: AspectRatio(
            aspectRatio: 2.8/ 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Text('The Jungle Book',style: Styles.textStyle30.copyWith(
          fontWeight: FontWeight.bold
        ),),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic
          ),),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRateItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 15,),
        BooksAction(),



      ],
    );
  }
}
