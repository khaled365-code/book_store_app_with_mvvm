
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilis/styles.dart';


class BookRateItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Row(
      children:
      [
        Icon(FontAwesomeIcons.solidStar,color: Colors.yellowAccent,),
        SizedBox(width: 6.3,),
        Text('4.8',style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('(2390)',style: Styles.textStyle14.copyWith(
          color: Color(0xff707070)
        ),),
      ],
    );
  }
}
