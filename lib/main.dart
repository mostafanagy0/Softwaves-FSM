import 'package:flutter/material.dart';
import 'package:fsm/core/di/dependancy_ingection.dart';
import 'package:fsm/core/routing/app_router.dart';
import 'package:fsm/fsm_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(FsmApp(appRouter: AppRouter()));
}
