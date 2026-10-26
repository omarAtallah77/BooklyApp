import 'package:bookly_app/features/Home/presentation/view/widgets/BookImageItem.dart';
import 'package:flutter/material.dart';

class SimilarBookListview extends StatelessWidget {
  const SimilarBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustoumBookitem(),
          );
        },
      ),
    );;
  }
}