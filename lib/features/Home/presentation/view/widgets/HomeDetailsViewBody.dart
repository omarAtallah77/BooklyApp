import 'package:bookly_app/features/Home/presentation/view/widgets/priceBox.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'ListViewitem.dart';
import 'RatingItem.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Text(' 4.8', style: Styles.textStyle18),
              Text(
                ' (2390)',
                style: Styles.textStyle18.copyWith(color: Colors.grey),
              ),
            ],
          ),
          PriceBoxWidget(),
        ],
      ),
    );
  }
}
