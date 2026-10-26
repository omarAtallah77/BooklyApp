import 'package:bookly_app/features/Search/presentation/views/widgets/SeachViewBody.dart';
import 'package:flutter/material.dart';

class Searchview  extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SearchviewBody()),
    );
  }
}

