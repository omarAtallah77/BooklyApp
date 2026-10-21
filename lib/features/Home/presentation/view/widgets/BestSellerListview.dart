import 'package:flutter/material.dart';

import 'bestSellerListItem.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //shrinkWrap: true,   // to make listview take the size of their children
      padding: EdgeInsets.zero,  // to remove the default padding of the listview
      physics: NeverScrollableScrollPhysics(),  // to make listview scroll stop
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: BestSellerListItem(),
        );
      },
    );
  }
}
