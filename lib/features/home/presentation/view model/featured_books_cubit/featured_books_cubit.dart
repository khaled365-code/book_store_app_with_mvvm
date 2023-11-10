import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utilis/book_model/book_model.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());

  HomeRepoImplementation homerepo;

  Future<void> getFeaturedBooks() async
  {
     emit(FeaturedBooksLoadingState());
     var result= await homerepo.fetchFeaturedBooks();
     result.fold((failure)
         {
           emit(FeaturedBooksFailureState(errorMessage: failure.errorMessage));
         }, (books)
         {
           emit(FeaturedBooksSuccessState(bookList: books));
         });
  }
}
