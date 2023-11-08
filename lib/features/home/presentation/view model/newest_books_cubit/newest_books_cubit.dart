import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  HomeRepoImplementation homeRepo;
  Future<void> getNewestBooks() async
  {
      var result = await homeRepo.fetchNewestBooks();
      result.fold((failure)
      {
       emit(NewestBooksFailureState(errorMessage: failure.errorMessage ));
      }, (books)
      {
        emit(NewestBooksSuccessState(booksList: books));
      }) ;
  }
}
