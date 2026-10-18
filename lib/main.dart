import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'features/Splash/Presentation/views/SplashView.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookly',
      theme: ThemeData(
       scaffoldBackgroundColor: KprimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
