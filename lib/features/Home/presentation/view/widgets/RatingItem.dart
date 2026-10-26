import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Text('4.8', style: Styles.textStyle18),
        Text(
          ' (2390)',
          style: Styles.textStyle18.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
