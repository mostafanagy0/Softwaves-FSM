import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fsm/core/di/dependancy_ingection.dart';
import 'package:fsm/core/routing/routes.dart';
import 'package:fsm/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:fsm/features/auth/presentation/views/login_view.dart';
import 'package:fsm/features/home/presentation/views/home_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const LoginView(),
          ),
        );
      case Routes.homeView:
       
        return MaterialPageRoute(builder: (_) => HomeView());

      default:
        return null;
    }
  }
}
