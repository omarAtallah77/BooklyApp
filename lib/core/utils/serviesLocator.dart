import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup(){

  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(apiService: ApiService(dio: Dio())));
}
