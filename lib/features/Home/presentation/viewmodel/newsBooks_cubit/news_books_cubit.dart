import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.homeRepoImp) : super(NewsBooksInitial());

  final HomeRepoImp homeRepoImp ;

  Future <void> fetchNewsBooks() async {
    emit(NewsBooksLoadingl());
    final result = await homeRepoImp.fetchBestSellerBooks();
    result.fold(
      (failure) => emit(NewsBooksFailure(failure.errorMessage)),
      (books) => emit(NewsBooksSuccess(books)),
    );
  }
  
}
