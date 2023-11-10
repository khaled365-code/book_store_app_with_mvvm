import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utilis/book_model/book_model.dart';
import '../../../data/repos/search_repo_implementation.dart';

part 'serached_books_state.dart';

class SerachedBooksCubit extends Cubit<SerachedBooksState> {

  SearchRepoImplementation apiRepo;
  SerachedBooksCubit(this.apiRepo) : super(SerachedBooksInitial());

  getSearchedListBooks({required String category}) async
  {
    emit(SerachedBooksLoadingState());

    var result= await apiRepo.getSearchedBooks(category: category);

    result.fold((failure)
    {
      emit(SerachedBooksFailureState(errorMessage: failure.errorMessage));
    }, (books)
    {

       emit(SerachedBooksSuccessState(booksList: books));
    }

    );

  }

}
