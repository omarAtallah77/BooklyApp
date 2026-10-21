import 'package:flutter/material.dart';

import '../../../../../core/utils/assetsdata.dart';

class Listviewitem extends StatelessWidget {
  const Listviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/3, // Adjust the aspect ratio as needed
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetsData.testBook),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.05),
        ),
      ),
    );
  }
}
