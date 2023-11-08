import 'package:books_app/constants.dart';
import 'package:books_app/core/utilis/app_routing.dart';
import 'package:books_app/core/utilis/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:books_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/splash/presentation/views/splash_screen.dart';

void main() {

  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (context) => FeaturedBooksCubit(
          getIt.get<HomeRepoImplementation>()
        ),),
        BlocProvider(create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>()
        ),)

    ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

