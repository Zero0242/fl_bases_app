import 'package:flutter/material.dart';
import 'package:flutter_basics_app/app/routes.dart';

class AppRouter {
  static const String initialRoute = HomeScreen.route;

  static final routes = {
    // * Rutas principal
    HomeScreen.route: (context) => HomeScreen(),
    // * Rutas de conteo
    CounterScreen.route: (context) {
      final count = ModalRoute.of(context)!.settings.arguments as int?;
      return CounterScreen(initialCount: count);
    },
    CounterTimerScreen.route: (context) => CounterTimerScreen(),
    // * Rutas de layout
    GridLayoutScreen.route: (context) => GridLayoutScreen(),
    VerticalLayoutScreen.route: (context) => VerticalLayoutScreen(),
    HorizontalLayoutScreen.route: (context) => HorizontalLayoutScreen(),
    StackLayoutScreen.route: (context) => StackLayoutScreen(),
    ScrollableLayoutScreen.route: (context) => ScrollableLayoutScreen(),
  };
}
