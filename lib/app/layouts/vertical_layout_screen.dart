import 'package:flutter/material.dart';

class VerticalLayoutScreen extends StatelessWidget {
  const VerticalLayoutScreen({super.key});

  /// App Route is: `/layouts/vertical`
  static const String route = '/layouts/vertical';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vertical Layout')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Elementos apilados verticalmente'),
            FlutterLogo(),
            Divider(),
            Icon(Icons.people),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
