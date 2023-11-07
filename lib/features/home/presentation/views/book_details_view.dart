import 'package:books_app/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(child: BookDetailsBody()) ,
    );
  }
}
