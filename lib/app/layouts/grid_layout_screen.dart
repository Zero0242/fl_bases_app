import 'package:flutter/material.dart';

class GridLayoutScreen extends StatelessWidget {
  const GridLayoutScreen({super.key});

  /// App Route is: `/layouts/grids`
  static const String route = '/layouts/grids';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: Center(child: Text('GridLayoutScreen Screen body')),
    );
  }
}
