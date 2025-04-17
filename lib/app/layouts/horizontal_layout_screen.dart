import 'package:flutter/material.dart';

class HorizontalLayoutScreen extends StatelessWidget {
  const HorizontalLayoutScreen({super.key});

  /// App Route is: `/layouts/rows`
  static const String route = '/layouts/rows';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Horizontal Layout')),
      body: Center(
        child: Row(
          children: <Widget>[
            Text('Elementos apilados horizontalmente'),
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
