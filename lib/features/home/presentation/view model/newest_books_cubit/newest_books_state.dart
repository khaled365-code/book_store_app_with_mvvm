part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksSuccessState extends NewestBooksState {

  List<BookModel> booksList;
  NewestBooksSuccessState({required this.booksList});


}
class NewestBooksLoadingState extends NewestBooksState {}


class NewestBooksFailureState extends NewestBooksState {

  final String errorMessage;

  NewestBooksFailureState({required this.errorMessage});


}

