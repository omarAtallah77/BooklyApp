import 'package:bookly_app/core/widgets/custoumFilure_widget.dart';
import 'package:bookly_app/core/widgets/custoumLoading_widget.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/BookImageItem.dart';
import 'package:bookly_app/features/Home/presentation/viewmodel/similarBooks_cubit/similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListview extends StatelessWidget {
  const SimilarBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSucess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustoumBookitem(book: state.books[index],),
              );
            },
          ),
        );
        }
        else if (state is SimilarBookFailure){
          return CustomFailureWidget(message: state.errorMessage,);
        }
        else {
          return Center(child: const CustoumloadingWidget());
        }
        
      },
    );
  }
}
