import 'package:books_app/core/utilis/Design%20pattern%20package/service_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:books_app/features/home/presentation/view%20model/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/details_view_widgets/book_details_view.dart';
import 'package:books_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:books_app/features/search/presentation/view%20models/searched_books_cubit/serached_books_cubit.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/views/widgets/home_view_widgets/home_view.dart';
import '../../../features/splash/presentation/views/splash_screen.dart';
import '../book_model/book_model.dart';

abstract class AppRouter {

  static const Khomeview = '/homeview';
  static const Kbookdetailsview = '/bookdetailsview';
  static const KsearchViewScreen = '/searchViewScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Khomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Kbookdetailsview,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(
                  getIt.get<HomeRepoImplementation>()
              ),
              child: BookDetailsView(bookModel: state.extra as BookModel),
            ),
      ),
      GoRoute(
        path: KsearchViewScreen,
        builder: (context, state) =>
            BlocProvider(
              create: (context) =>
                  SerachedBooksCubit(
                      getIt.get<SearchRepoImplementation>()),
              child: const SearchView(),
            ),
      ),

    ],
  );


}