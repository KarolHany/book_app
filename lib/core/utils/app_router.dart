import 'package:book_app/features/home/presentation/views/book_details_view.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
<<<<<<< HEAD
import 'package:book_app/features/search/presentation/views/search_view.dart';
=======
>>>>>>> ff83f1d7a46a4683209ad10108513c4ba4c13b97
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
<<<<<<< HEAD
  static const kSearchView = '/searchView';

=======
>>>>>>> ff83f1d7a46a4683209ad10108513c4ba4c13b97
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // understand this is the begin from this '/'
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView, 
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
<<<<<<< HEAD
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
=======
>>>>>>> ff83f1d7a46a4683209ad10108513c4ba4c13b97
    ],
  );
}
