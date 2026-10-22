import 'package:bookly_app/features/Splash/Presentation/views/SplashView.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/view/HomeDetailsView.dart';
import '../../features/Home/presentation/view/HomeView.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: viewRoutes.homeView, builder: (context, state) => const Homeview()),
      GoRoute(
        path: viewRoutes.homeDetailsView,
        builder: (context, state) => const HomeDetailsView(),),
    ],
  );
}

class viewRoutes {
  static const String homeView = '/homeview';
  static const String homeDetailsView = '/home_details';
}
