import 'package:bookly_app/core/utils/serviesLocator.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/Home/presentation/viewmodel/FeaturedBooks_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/viewmodel/newsBooks_cubit/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/routers.dart';



void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImp>()),
        ),
        BlocProvider(
          create: (context) => NewsBooksCubit(getIt.get<HomeRepoImp>()),
        )
      ],
    
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        title: 'Bookly',
        theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: KprimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
        ),
      ),
    );
  }
}
