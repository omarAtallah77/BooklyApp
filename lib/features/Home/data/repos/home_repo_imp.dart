import 'package:bookly_app/core/errors/Failers.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeRepoImp implements HomeRepo {

  ApiService apiService ;
  HomeRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
    
    final String endpoint = 'volumes?filter=free-ebooks&q=subjject:programming&sorting=newest&key=AIzaSyAaWyP3AS6nb828uj-el3AXTTd2XVnY32s';
    await apiService.get(endpoint: endpoint).then((value) {
      List<BookModel> books = [];
      for (var item in value['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    }).catchError((error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(error.toString()));
    });
    
    return Left(ServerFailure('Unknown error occurred'));
  }

  @override
  @override
Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
  try {
    final String endpoint =
        'volumes?filter=free-ebooks&q=subjject:programming&key=AIzaSyAaWyP3AS6nb828uj-el3AXTTd2XVnY32s';

    final value = await apiService.get(endpoint: endpoint);
    debugPrint('API Response: $value'); // Debug print to check the response

    List<BookModel> books = [];

    for (var item in value['items']) {
      books.add(BookModel.fromJson(item));
    }

    return Right(books);
  } catch (error) {
    if (error is DioException) {
      return Left(ServerFailure.fromDioError(error));
    }

    return Left(ServerFailure(error.toString()));
  }
}

}