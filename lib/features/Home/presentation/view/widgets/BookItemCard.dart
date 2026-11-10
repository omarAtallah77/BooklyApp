import 'package:bookly_app/core/utils/Styles.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routers.dart';
import 'RatingItem.dart';

class BookItemCard extends StatelessWidget {
  const BookItemCard({super.key ,  required this.book});
 
 final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(viewRoutes.homeDetailsView , extra: book);
      },
      child: SizedBox(
        height: 160,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2 / 3, // Adjust the aspect ratio as needed
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      book.image ?? '',
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.05),
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                     book.title,
                      style: Styles.textStyle18,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(book.subtitle ?? ''),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Free', style: Styles.textStyle18),
                        RatingItem(),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
