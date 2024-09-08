import 'package:flutter/material.dart';
import 'package:flutter_project/core/routing/routes.dart';
import 'package:flutter_project/features/login/ui/login_screen.dart';
import 'package:flutter_project/features/onBoarding/onBoardin_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
