import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/view/HomeDetailsView.dart';
import '../../features/Home/presentation/view/HomeView.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: 'home', builder: (context, state) => const Homeview()),
    GoRoute(path: 'home_details', builder: (context, state) => const HomeDetailsView()),
  ],
);
