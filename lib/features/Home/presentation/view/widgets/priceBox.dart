import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';

class PriceBoxWidget extends StatelessWidget {
  const PriceBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 16.0),
      child: Row(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                '19.99\$',
                style: Styles.textStyle18.copyWith(color: Colors.black),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff984227),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text('Free Preview', style: Styles.textStyle18.copyWith(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
