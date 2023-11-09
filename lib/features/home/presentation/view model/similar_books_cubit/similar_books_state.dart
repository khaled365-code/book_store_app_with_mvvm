part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksSuccessState extends SimilarBooksState {

  List<BookModel> booksList;

  SimilarBooksSuccessState({required this.booksList});



}
class SimilarBooksFailureState extends SimilarBooksState {
  final String errorMessage;
  SimilarBooksFailureState({required this.errorMessage});

}
class SimilarBooksLoadingState extends SimilarBooksState {}

