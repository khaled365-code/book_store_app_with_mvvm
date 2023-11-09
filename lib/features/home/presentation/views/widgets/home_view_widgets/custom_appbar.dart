

import 'package:books_app/core/utilis/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constants.dart';




class CustomAppBar extends StatelessWidget {

  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 70),
      child: Row(
        children: [
         const  Text('K o t o b i',style: TextStyle(fontSize: 25,fontFamily: kSecondaryFont,fontWeight: FontWeight.bold),),
          const Spacer(),
          IconButton(
              onPressed: ()
              {
               GoRouter.of(context).push(AppRouter.KsearchViewScreen);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,))
        ],
      ),
    );
  }
}
