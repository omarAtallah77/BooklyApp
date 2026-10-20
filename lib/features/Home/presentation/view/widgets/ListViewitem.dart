import 'package:flutter/material.dart';

import '../../../../../core/utils/assetsdata.dart';

class Listviewitem extends StatelessWidget {
  const Listviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2/3, // Adjust the aspect ratio as needed
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetsData.logo),
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
