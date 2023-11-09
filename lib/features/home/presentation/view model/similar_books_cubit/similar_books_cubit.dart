import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo_implementation.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {

  final HomeRepoImplementation homeRepo;
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  getSimilarBooks({required String category}) async
  {
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailureState(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(booksList: books));
    }
    );





   }

}
