import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:meta/meta.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit({required this.homeRepoImp}) : super(SimilarBookInitial());

   final HomeRepoImp homeRepoImp ; 

   Future <void> fetchSimilarBooks()async {

    emit(SimilarBookLoading());
    final result = await homeRepoImp.fetchSimilarBooks(category: 'programming');
    result.fold(
      (failure) => emit(SimilarBookFailure(errorMessage: failure.errorMessage)),
      (books) => emit(SimilarBookSucess(books: books)),
    );
   }
}
