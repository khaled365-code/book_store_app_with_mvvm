import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utilis/Routing/app_routing.dart';
import '../../../../../../core/widgets/loading_widget.dart';
import 'book_item.dart';


class BooksHoriListView extends StatelessWidget {


  const BooksHoriListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccessState)
          {
             return Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
              child: SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .3,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: ()
                    {
                      GoRouter.of(context).push(AppRouter.Kbookdetailsview,extra: state.bookList[index]);

                    },
                    child: BookItem(
                      imageUrl: state.bookList[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 25,),
                  itemCount: state.bookList.length,
                ),
              ),
            );
          }
        else if(state is FeaturedBooksFailureState)
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
