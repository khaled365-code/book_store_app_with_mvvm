import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/details_view_widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {

  final BookModel bookModel;
  const BookDetailsView({super.key, required this.bookModel});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(child: BookDetailsBody(
        bookModel: widget.bookModel,
      )) ,
    );
  }
}
