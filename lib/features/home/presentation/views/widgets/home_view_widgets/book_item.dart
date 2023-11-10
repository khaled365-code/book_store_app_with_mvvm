

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BookItem extends StatelessWidget {


  final String imageUrl;

  const BookItem({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.3/4,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Center(child: Icon(Icons.gpp_maybe),),
            fit: BoxFit.fill,


          )
        ),
    );
  }
}

