


import 'package:books_app/features/home/presentation/views/widgets/home_view_widgets/home_view.dart';
import 'package:flutter/material.dart';

class AppBarBookDetails extends StatelessWidget {


  const AppBarBookDetails({super.key});
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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView(),));
              }
              , icon: const Icon(Icons.close)),
          IconButton(
              onPressed: (){}
              , icon: const Icon(Icons.shopping_cart_outlined)),

        ],
      ),
    );
  }
}
