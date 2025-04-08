import 'package:flutter/material.dart';
import 'counters/counter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /// App Route is: `/home`
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: <Widget>[
          Text('Contadores'),
          Divider(),
          ListTile(
            title: Text('Contador'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
