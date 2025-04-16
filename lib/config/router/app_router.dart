import 'package:flutter/material.dart';
import 'package:flutter_basics_app/app/routes.dart';

class AppRouter {
  static const String initialRoute = HomeScreen.route;

  static final routes = {
    HomeScreen.route: (context) => HomeScreen(),
    // * Ruta con argumentos
    CounterScreen.route: (context) {
      final count = ModalRoute.of(context)!.settings.arguments as int?;
      return CounterScreen(initialCount: count);
    },
    CounterTimerScreen.route: (context) => CounterTimerScreen(),
    GridLayoutScreen.route: (context) => GridLayoutScreen(),
    VerticalLayoutScreen.route: (context) => VerticalLayoutScreen(),
    HorizontalLayoutScreen.route: (context) => HorizontalLayoutScreen(),
    ScrollableLayoutScreen.route: (context) => ScrollableLayoutScreen(),
  };
}
