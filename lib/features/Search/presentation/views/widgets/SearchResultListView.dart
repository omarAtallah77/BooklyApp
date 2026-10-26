
import 'package:bookly_app/features/Home/presentation/view/widgets/BookItemCard.dart';
import 'package:flutter/material.dart';

class Searchresultlistview extends StatelessWidget {
  const Searchresultlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: BookItemCard(),
        );
      },
    );
  }
}
