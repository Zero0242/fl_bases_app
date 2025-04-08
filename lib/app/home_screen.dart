import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /// App Route is: `/`
  static const String route = '/';

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
          ListTile(
            title: Text('Contador 10'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 25'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 50'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 75'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 10 25 50 75 100'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador con timer'),
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
