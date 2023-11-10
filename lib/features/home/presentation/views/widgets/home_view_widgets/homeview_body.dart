

import 'package:books_app/features/home/presentation/views/widgets/home_view_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utilis/styles/styles.dart';
import 'books_horizontal_listview.dart';
import 'best_seller_listview.dart';


class HomeViewBody extends StatelessWidget {


  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers:
      [
        SliverToBoxAdapter(
           child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BooksHoriListView(),
                Padding(
                  padding:  EdgeInsets.only(left: 20,top: 30),
                  child: Text('Best Seller',style: Styles.textStyle20,),
                ),
                SizedBox(height: 20,),
              ],
            )
        ),
        SliverToBoxAdapter(
          child: BestSellerListView()
          ,
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20,),
        )
      ],
    );
  }
}
