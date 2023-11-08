
import 'package:flutter/material.dart';

import 'book_item.dart';


class DetailsListView extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>BookItem(
            imageUrl: 'https://i.pinimg.com/originals/d1/f9/e2/d1f9e28c11f98435cd41bf004f1ad655.jpg0',
          ) ,
          separatorBuilder: (context, index) => const SizedBox(width: 10,),
          itemCount: 20,
        ),
      ),
    );

  }
}
