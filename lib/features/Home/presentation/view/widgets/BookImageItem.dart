import 'package:bookly_app/core/utils/routers.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class CustoumBookitem extends StatelessWidget {
  const CustoumBookitem({super.key , required this.book});
   
   final BookModel book ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(viewRoutes.homeDetailsView, extra: book);
      },
      child: AspectRatio(
        aspectRatio: 2/3, // Adjust the aspect ratio as needed
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(book.image ?? ''),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.05),
          ),
        ),
      ),
    );
  }
}
