import 'package:flutter/material.dart';
import 'package:menu_app/pages/food_list.dart';
import 'package:menu_app/pages/food_page.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_app/models/food.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => food_list(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) => food_page(
        food: state.extra as Food,
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
