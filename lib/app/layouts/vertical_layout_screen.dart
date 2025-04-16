import 'package:flutter/material.dart';

class VerticalLayoutScreen extends StatelessWidget {
  const VerticalLayoutScreen({super.key});

  /// App Route is: `/layouts/vertical`
  static const String route = '/layouts/vertical';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: Center(child: Text('VerticalLayoutScreen Screen body')),
    );
  }
}
