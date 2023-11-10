

import 'package:books_app/core/utilis/styles/styles.dart';
import 'package:books_app/features/search/presentation/view%20models/searched_books_cubit/serached_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CustomTextField extends StatelessWidget {

  CustomTextField({super.key});
  final  textController=TextEditingController();
  final checkKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: checkKey,
      child: TextFormField(
        controller: textController,
        validator: (value)
        {

          if(value!.isEmpty)
            {
              return 'This Field is required';
            }
          else
            {
              return null;
            }

        },
        onFieldSubmitted: (value)
        {
          if(checkKey.currentState!.validate())
          {
            BlocProvider.of<SerachedBooksCubit>(context).getSearchedListBooks(category: value);

          }

        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey,width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey,width: 2),
          ),
          hintText: 'Search',
          hintStyle: Styles.textStyle18,
          suffixIcon: IconButton(
              onPressed: () {

                if(checkKey.currentState!.validate())
                  {
                    BlocProvider.of<SerachedBooksCubit>(context).getSearchedListBooks(category: textController.text);

                  }

              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }
}
