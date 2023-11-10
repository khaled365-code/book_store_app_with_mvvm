import 'package:books_app/constants.dart';
import 'package:books_app/core/utilis/Routing/app_routing.dart';
import 'package:books_app/core/utilis/Design%20pattern%20package/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:books_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/view%20model/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/views/widgets/details_view_widgets/book_details_view.dart';
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
        )..getFeaturedBooks(),),
        BlocProvider(create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>()
        )..getNewestBooks(),),


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

