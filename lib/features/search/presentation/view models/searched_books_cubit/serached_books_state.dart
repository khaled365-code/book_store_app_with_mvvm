part of 'serached_books_cubit.dart';

@immutable
abstract class SerachedBooksState {}

class SerachedBooksInitial extends SerachedBooksState {}
class SerachedBooksSuccessState extends SerachedBooksState {

  final List<BookModel> booksList;

  SerachedBooksSuccessState({required this.booksList});


}
class SerachedBooksFailureState extends SerachedBooksState {

  final String errorMessage;

  SerachedBooksFailureState({required this.errorMessage});

}
class SerachedBooksLoadingState extends SerachedBooksState {}

