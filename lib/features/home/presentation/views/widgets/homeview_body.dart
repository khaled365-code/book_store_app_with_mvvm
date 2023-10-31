

import 'package:books_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'book_item_view.dart';
import 'books_listview.dart';


class HomeViewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        BooksListView()
      ],
    );
  }
}
