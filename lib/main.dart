import 'package:flutter/material.dart';
import 'package:flutter_basics_app/app/counters/counter_screen.dart';
import 'package:flutter_basics_app/app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // * Configuraciones de navegacion, en formato
      // * { rutastring : (context) => Componente() }
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        // * Ruta con argumentos
        CounterScreen.route: (context) {
          final count = ModalRoute.of(context)!.settings.arguments as int?;
          return CounterScreen(initialCount: count);
        },
      },
      initialRoute: HomeScreen.route,
    );
  }
}
