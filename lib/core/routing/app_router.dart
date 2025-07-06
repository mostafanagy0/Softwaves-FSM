import 'package:flutter/material.dart';
import 'package:fsm/core/routing/routes.dart';
import 'package:fsm/features/presentation/views/login_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());

      default:
        return null;
    }
  }
}
