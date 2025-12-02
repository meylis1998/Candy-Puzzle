import 'package:flutter/material.dart';
import 'package:candy_puzzle/core/constants/app_constants.dart';
import 'package:candy_puzzle/shared/theme/app_theme.dart';
import 'package:candy_puzzle/core/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}
