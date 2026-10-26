import 'package:bookly_app/core/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assetsdata.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 16.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(assetsData.logo , width: 100,height: 100),
          IconButton(onPressed: (){
            GoRouter.of(context).push(viewRoutes.searchView);
          }, icon: const Icon(Icons.search , size: 30,))
        ],),
    );
  }
}