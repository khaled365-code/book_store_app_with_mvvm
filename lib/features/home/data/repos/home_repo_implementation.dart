
import 'package:books_app/core/errors/failure.dart';
import 'package:books_app/core/utilis/Api%20Service/api_service.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utilis/book_model/book_model.dart';

class HomeRepoImplementation implements HomeRepo {

  final ApiService apiService;

  HomeRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try
    {

      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:software&Sorting=newest');
      List<BookModel> booksList = [];

      for (var item in data['items']) {
        try{
          booksList.add(BookModel.fromJson(item));
        }catch(e)
       {
         booksList.add(BookModel.fromJson(item));
       }

      }
      return right(booksList);
    } catch (e)
    {
      return left(ServerFailure(errorMessage: e.toString()));
      // if(e is DioError)
      //   {
      //     return left(ServerFailure.fromDioError(e));
      //   }
      // else
      //   {
      //     return left(ServerFailure(errorMessage: e.toString()));
      //   }
    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async
  {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> bookList = [];

      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }

      return right(bookList);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:software engineering&Sorting=relevance');

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
