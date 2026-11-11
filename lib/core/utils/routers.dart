import 'package:bookly_app/core/utils/serviesLocator.dart';
import 'package:bookly_app/features/Home/data/models/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/Home/presentation/viewmodel/similarBooks_cubit/similar_book_cubit.dart';
import 'package:bookly_app/features/Search/presentation/views/SearchView.dart';
import 'package:bookly_app/features/Splash/Presentation/views/SplashView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/view/HomeDetailsView.dart';
import '../../features/Home/presentation/view/HomeView.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: viewRoutes.homeView,
        builder: (context, state) => const Homeview(),
      ),
      GoRoute(
        path: viewRoutes.homeDetailsView,
        builder: (context, state) {
          final book = state.extra as BookModel;
          return BlocProvider(
            create: (context) => SimilarBookCubit(homeRepoImp: getIt.get<HomeRepoImp>())..fetchSimilarBooks(),
            child: HomeDetailsView(book: book),
          );
        },
      ),
      GoRoute(
        path: viewRoutes.searchView,
        builder: (context, state) => const Searchview(),
      ),
    ],
  );
}

class viewRoutes {
  static const String homeView = '/homeview';
  static const String homeDetailsView = '/home_details';
  static const String searchView = '/searchview';
}
