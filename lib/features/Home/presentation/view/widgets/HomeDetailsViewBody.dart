import 'package:bookly_app/features/Home/presentation/view/widgets/SimilarBookListview.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/priceBox.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/Styles.dart';
import 'BookImageItem.dart';
import 'RatingItem.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers : [SliverFillRemaining(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.8,
              width: MediaQuery.of(context).size.width * 0.5,
              child: CustoumBookitem(),
            ),
            SizedBox(height: 20),
            Text("The Jungle Book", style: Styles.textStyle30),
            SizedBox(height: 6),
            Text("Rudyard Kipling", style: Styles.textStyle18),
            RatingItem(),
            SizedBox(height: 20),
            PriceBoxWidget(),
            Expanded(child: SizedBox(height: 10)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('You can also like' , style : Styles.textStyle18)
            ),
            SizedBox(height: 16),
            SimilarBookListview(),
            SizedBox(height: 6),
          ],
        ),
      ),)],
  
    );
  }
}
