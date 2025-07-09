//? repo mean what the view doing but just an abstract methods not implementation
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
}
