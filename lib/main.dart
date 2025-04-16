import 'package:flutter/material.dart';
import 'config/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.mainTheme,
      routes: AppRouter.routes,
      initialRoute: AppRouter.initialRoute,
    );
  }
}
