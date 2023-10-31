

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 80),
      child: Row(
        children: [
          Text('K o t o b i',style: TextStyle(fontSize: 25,fontFamily: 'Gara',fontWeight: FontWeight.bold),),
          Spacer(),
          IconButton(
              onPressed: ()
              {

              },
              icon: Icon(FontAwesomeIcons.magnifyingGlass,size: 24,))
        ],
      ),
    );
  }
}
