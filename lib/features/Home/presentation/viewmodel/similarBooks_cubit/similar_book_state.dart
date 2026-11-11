part of 'similar_book_cubit.dart';

@immutable
sealed class SimilarBookState {}

final class SimilarBookInitial extends SimilarBookState {}
final class SimilarBookLoading extends SimilarBookState {}
final class SimilarBookSucess extends SimilarBookState {
  final List<BookModel> books;
  SimilarBookSucess({required this.books});
}
final class SimilarBookFailure extends SimilarBookState {
  final String errorMessage;
  SimilarBookFailure({required this.errorMessage });
}
