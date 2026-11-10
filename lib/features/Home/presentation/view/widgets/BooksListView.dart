import 'package:bookly_app/core/widgets/custoumFilure_widget.dart';
import 'package:bookly_app/core/widgets/custoumLoading_widget.dart';
import 'package:bookly_app/features/Home/presentation/viewmodel/FeaturedBooks_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BookImageItem.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustoumBookitem(imageurl: state.books[index].image ?? '',),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksError) {
          return CustomFailureWidget(message: state.errorMessage);
        } else {
          return const CustoumloadingWidget();
        }
      },
      
    );
  }
}
