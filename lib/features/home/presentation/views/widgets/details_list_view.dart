
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
          itemBuilder: (context, index) =>BookItem() ,
          separatorBuilder: (context, index) => const SizedBox(width: 10,),
          itemCount: 20,
        ),
      ),
    );

  }
}
