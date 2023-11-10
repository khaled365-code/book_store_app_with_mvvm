

import 'package:books_app/core/utilis/Api%20Service/api_service.dart';
import 'package:books_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/data/repos/home_repo_implementation.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    apiService: getIt.get<ApiService>(),
  ));

  getIt.registerSingleton<SearchRepoImplementation>(SearchRepoImplementation(
    apiService: getIt.get<ApiService>(),
  ));


}
