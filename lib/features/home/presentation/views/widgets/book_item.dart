

import 'package:books_app/core/utilis/asset_data.dart';
import 'package:flutter/material.dart';


class BookItem extends StatelessWidget {


  final String imageUrl;

  const BookItem({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    
    return AspectRatio(
        aspectRatio: 2.3/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.fill)
          ),
        ),
      );
  }
}
