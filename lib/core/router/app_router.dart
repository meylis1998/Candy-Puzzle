import 'package:go_router/go_router.dart';
import 'package:candy_puzzle/features/home/presentation/pages/home_page.dart';

class AppRouter {
  AppRouter._();

  static const String home = '/';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
