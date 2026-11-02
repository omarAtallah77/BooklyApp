import 'package:bookly_app/core/errors/Failers.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {

  ApiService apiService ;
  HomeRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
    
    final String endpoint = 'volumes?q=subject:programming&filter=free-ebooks&sorting=newest';
    await apiService.get(endpoint: endpoint).then((value) {
      List<BookModel> books = [];
      for (var item in value['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    }).catchError((error) {
      if (error is DioError) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(error.toString()));
    });
    
    return Left(ServerFailure('Unknown error occurred'));
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    
    final String endpoint = 'volumes?q=subject:programming&filter=free-ebooks';
    await apiService.get(endpoint: endpoint).then((value) {
      List<BookModel> books = [];
      for (var item in value['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    }).catchError((error) {
      if (error is DioError) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(error.toString()));
    });
    
    return Left(ServerFailure('Unknown error occurred'));
  }

}