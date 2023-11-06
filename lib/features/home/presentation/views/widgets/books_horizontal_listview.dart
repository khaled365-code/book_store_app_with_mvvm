

import 'package:flutter/material.dart';

import 'book_item.dart';


class BooksHoriListView extends StatelessWidget {


  const BooksHoriListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5,top: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>BookItem() ,
          separatorBuilder: (context, index) => const SizedBox(width: 25,),
          itemCount: 20,
        ),
      ),
    );
  }
}
