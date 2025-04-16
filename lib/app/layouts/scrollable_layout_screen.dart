import 'package:flutter/material.dart';

class ScrollableLayoutScreen extends StatelessWidget {
  const ScrollableLayoutScreen({super.key});

  /// App Route is: `/layouts/scrollables`
  static const String route = '/layouts/scrollable';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: Center(child: Text('ScrollableLayoutScreen Screen body')),
    );
  }
}
