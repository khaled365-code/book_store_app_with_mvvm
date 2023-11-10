import 'package:books_app/core/utilis/book_model/book_model.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/loading_widget.dart';
import 'package:books_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utilis/Routing/app_routing.dart';
import '../home_view_widgets/book_item.dart';


class SimilarBooksListView extends StatefulWidget {


  final BookModel bookModel;

  const SimilarBooksListView({super.key, required this.bookModel});

  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}

class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState)
          {
            return GestureDetector(

              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 5),
                  child: SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .2,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          GestureDetector(
                            onTap: ()
                            {
                              GoRouter.of(context).push(AppRouter.Kbookdetailsview,extra: state.booksList[index]);

                            },
                            child: BookItem(
                              imageUrl: state.booksList[index].volumeInfo.imageLinks?.thumbnail ?? 'https://i.stack.imgur.com/OwMsI.jpg',
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(width: 20,),
                      itemCount: state.booksList.length,
                    ),
                  ),
                ),
            );
          }
        else if(state is SimilarBooksFailureState)
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
