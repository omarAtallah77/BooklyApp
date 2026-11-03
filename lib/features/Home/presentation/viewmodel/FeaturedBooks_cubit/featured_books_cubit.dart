import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImp) : super(FeaturedBooksInitial());

  final HomeRepoImp homeRepoImp ; 

Future <void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadiing());
    final result = await homeRepoImp.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksError(failure.errorMessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }

}
