

import 'package:books_app/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import 'custom_text_field.dart';



class SearchViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers:
      [

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(),
                const SizedBox(height: 20,),
                Text(
                  'Search Result',
                  style: Styles.textStyle20,
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ),

       SliverToBoxAdapter(
            child: SearchListView(),
            ) ,

      ],

    );
  }
}


