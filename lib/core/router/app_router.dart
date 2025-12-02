import 'package:go_router/go_router.dart';
import 'package:candy_puzzle/features/home/presentation/pages/home_page.dart';
import 'package:candy_puzzle/features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  AppRouter._();

  static const String splash = '/splash';
  static const String home = '/';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
