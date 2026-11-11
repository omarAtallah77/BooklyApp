import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/SimilarBookListview.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/priceBox.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/Styles.dart';
import 'BookImageItem.dart';
import 'RatingItem.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: CustoumBookitem(book: book),
                ),
                const SizedBox(height: 20),
                Text(book.title, style: Styles.textStyle30),
                const SizedBox(height: 6),
                Text(book.subtitle ?? "", style: Styles.textStyle18),
                RatingItem(),
                const SizedBox(height: 20),
                PriceBoxWidget(),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(height: 16),
                SimilarBookListview(),
                const SizedBox(height: 6),
              ],
            ),
          ),
        ),
      ],
    );
  }
}