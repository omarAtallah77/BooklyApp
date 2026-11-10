import 'package:bookly_app/core/widgets/custoumFilure_widget.dart';
import 'package:bookly_app/core/widgets/custoumLoading_widget.dart';
import 'package:bookly_app/features/Home/presentation/viewmodel/newsBooks_cubit/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'BookItemCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit, NewsBooksState>(
      builder: (context, state) {
        if (state is NewsBooksLoadingl) {
          return const Center(child: CustoumloadingWidget());
        } else if (state is NewsBooksFailure) {
          return CustomFailureWidget(message: state.errorMessage);
        } else if (state is NewsBooksSuccess) {
          final books = state.books;
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: BookItemCard(book: book),
              );
            },
          );
        }
        return const SizedBox.shrink(); // Return an empty widget for other states
        
  });
  }
}
