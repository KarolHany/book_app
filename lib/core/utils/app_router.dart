import 'package:book_app/features/home/presentation/views/book_details_view.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
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
    ],
  );
}
