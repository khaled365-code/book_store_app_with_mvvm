


import 'package:books_app/core/utilis/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class SearchRepo
{
  Future<Either<Failure,List<BookModel>>>getSearchedBooks({required String category});



}