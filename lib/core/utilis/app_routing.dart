
import 'package:books_app/features/home/presentation/views/book_details_view.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter
{

  static const Khomeview='/homeview';
  static const Kbookdetailsview='/bookdetailsview';
  static const KsearchViewScreen='/searchViewScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: Khomeview,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: Kbookdetailsview,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: KsearchViewScreen,
        builder: (context, state) => SearchView(),
      ),
    ],
  );




}