import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/Splash_View_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SplashViewBody(),
    );
  }
}
