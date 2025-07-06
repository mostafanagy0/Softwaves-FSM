import 'package:flutter/material.dart';
import 'package:fsm/core/routing/app_router.dart';
import 'package:fsm/core/routing/routes.dart';

class FsmApp extends StatelessWidget {
  const FsmApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: Routes.loginView,
    );
  }
}
