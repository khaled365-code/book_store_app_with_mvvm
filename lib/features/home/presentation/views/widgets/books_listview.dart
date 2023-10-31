

import 'package:flutter/material.dart';

import 'book_item_view.dart';


class BooksListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>BookItem() ,
          separatorBuilder: (context, index) => SizedBox(width: 25,),
          itemCount: 20,
        ),
      ),
    );
  }
}
