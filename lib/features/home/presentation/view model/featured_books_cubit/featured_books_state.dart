part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksSuccessState extends FeaturedBooksState {

  final  List<BookModel> bookList;
  FeaturedBooksSuccessState({required this.bookList});

}
class FeaturedBooksFailureState extends FeaturedBooksState {

  final String errorMessage;
  FeaturedBooksFailureState({required this.errorMessage});

}
class FeaturedBooksLoadingState extends FeaturedBooksState {}

