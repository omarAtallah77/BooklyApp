import 'package:flutter/material.dart';
import '../../../../../core/utils/Styles.dart';
import 'AppBar.dart';
import 'BestSellerListview.dart';
import 'BooksListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomAppBar(),
              BooksListView(),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 30.0),
                child: Text("Best Seller", style: Styles.titleMedium),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListview(),
        ),
      ],
    );
  }
}
