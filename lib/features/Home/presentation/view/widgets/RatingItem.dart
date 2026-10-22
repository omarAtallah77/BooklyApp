import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('19.99\$', style: Styles.textStyle18),
        Spacer(),
        Icon(Icons.star, color: Colors.yellow),
        Text('4.8'),
      ],
    );
  }
}
