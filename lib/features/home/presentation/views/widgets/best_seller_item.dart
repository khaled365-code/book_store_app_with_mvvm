
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilis/asset_data.dart';
import '../../../../../core/utilis/styles.dart';
import 'book_rate_item.dart';


class BestSellerItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage(AssetsData.testImage),fit: BoxFit.fill)
            ),
          ),
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
                          'Harry Potter and the Goblet of Fire',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20.copyWith(
                            fontFamily: kSecondaryFont
                          ),
                        )),
                    const SizedBox(height: 3,),
                    Text('J.K. Rowling',style: Styles.textStyle14.copyWith(
                      color: Color(0xff707070)
                    ),),
                    const SizedBox(height: 3,),
                    Row(
                      children:
                      [
                        Text(r'19.99 $',style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                        )),

                        Spacer(),
                        BookRateItem(),




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
