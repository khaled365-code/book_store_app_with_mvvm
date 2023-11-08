

import 'package:books_app/core/utilis/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_implementation.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    apiService: getIt.get<ApiService>(),
  ));


}
