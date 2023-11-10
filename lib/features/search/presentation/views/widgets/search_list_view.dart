import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/loading_widget.dart';
import 'package:books_app/features/search/presentation/view%20models/searched_books_cubit/serached_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/home_view_widgets/best_seller_item.dart';


class SearchListView extends StatelessWidget {


  const SearchListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerachedBooksCubit, SerachedBooksState>(
      builder: (context, state) {

        if(state is SerachedBooksInitial)
          {
            return const Column(
              children:
              [

              ],
            );
          }
       else if(state is SerachedBooksSuccessState)
          {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => BestSellerItem(bookModel: state.booksList[index]),
                  separatorBuilder: (context, index) => const SizedBox(height: 15,),
                  itemCount: state.booksList.length
              ),
            );
          }
        else if(state is SerachedBooksFailureState)
          {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }
        else
          {
            return CustomLoadingWidget();
          }
      },
    );
  }
}
