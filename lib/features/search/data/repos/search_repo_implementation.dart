

import 'package:books_app/core/errors/failure.dart';
import 'package:books_app/core/utilis/Api%20Service/api_service.dart';
import 'package:books_app/core/utilis/book_model/book_model.dart';
import 'package:books_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImplementation implements SearchRepo {  
  
  final ApiService apiService;

  SearchRepoImplementation({required this.apiService});
  
  @override
  Future<Either<Failure, List<BookModel>>> getSearchedBooks({required String category}) async {
    var data = await apiService.get(
        endPoint: 'volumes?q=subject:$category&Filtering=free-ebooks');

    try {
      List<BookModel> booksList = [];

      for (var item in data['items']) {
        booksList.add(BookModel.fromJson(item));
      }
      return right(booksList);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
