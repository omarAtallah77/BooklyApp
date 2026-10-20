import 'package:flutter/material.dart';

import '../../../../../core/utils/assetsdata.dart';

class SplashViewBody extends StatefulWidget {
   SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
late AnimationController animationController ;

late Animation<Offset> Slidinganimatiom ;

@override
  void initState() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    Slidinganimatiom = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero).animate(animationController);
    animationController.forward();
    super.initState();

  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(assetsData.logo),
          const SizedBox(height: 10),
          SlideTransition(
            position: Slidinganimatiom,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
