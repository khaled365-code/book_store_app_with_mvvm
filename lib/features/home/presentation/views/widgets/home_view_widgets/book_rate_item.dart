
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utilis/styles/styles.dart';


class BookRateItem extends StatelessWidget {

  const BookRateItem({super.key, this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.count}) ;
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:
      [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),size: 14,),
        const SizedBox(width: 6.3,),
        Text(rating.toString(),style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Opacity(
          opacity: .5,
          child: Text('$count',style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600
          ),),
        ),
      ],
    );
  }
}
