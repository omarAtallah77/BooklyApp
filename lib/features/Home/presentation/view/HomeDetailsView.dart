import 'package:bookly_app/core/utils/routers.dart';
import 'package:bookly_app/features/Home/presentation/view/widgets/HomeDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KprimaryColor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            GoRouter.of(context).go(viewRoutes.homeView);

          },
        ),
      ),
      body: HomeDetailsViewBody(),
    );
  }
}
