import 'package:flutter/material.dart';

import '../../../../../core/utils/assetsdata.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(assetsData.logo),
      ],
    );
  }
}
