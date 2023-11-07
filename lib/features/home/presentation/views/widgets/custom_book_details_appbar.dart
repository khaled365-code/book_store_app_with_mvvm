


import 'package:flutter/material.dart';

class AppBarBookDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        [
          IconButton(
              onPressed: (){}
              , icon: Icon(Icons.close)),
          IconButton(
              onPressed: (){}
              , icon: Icon(Icons.shopping_cart_outlined)),

        ],
      ),
    );
  }
}
