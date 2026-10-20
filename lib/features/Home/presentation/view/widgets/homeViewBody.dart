import 'package:flutter/material.dart';
import 'AppBar.dart';
import 'ListViewitem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar() ,

              Listviewitem(),
           Text("data")
        ],
      ),
    );
  }
}
