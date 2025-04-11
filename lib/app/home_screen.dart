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
            onTap: () {
              // * Navigator con rutas nombradas, valor static `route`
              // Navigator.of(context).pushNamed( CounterScreen.route );
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 10'),
            onTap: () {
              // * Navigator con rutas nombradas, valor static `route`
              // * Pasando argumentos a la ruta
              // Navigator.of(context).pushNamed( CounterScreen.route , arguments: 10 );
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 25'),
            // TODO: implementar ruta correspondiente
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 50'),
            // TODO: implementar ruta correspondiente
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 75'),
            // TODO: implementar ruta correspondiente
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador 10 25 50 75 100'),
            onTap: () {
              // * Navigator con varias rutas concatenadas
              // Navigator.of(context)
              // ..pushNamed( CounterScreen.route , arguments: 10 )
              // ..pushNamed( CounterScreen.route , arguments: 25 )
              // ..pushNamed( CounterScreen.route , arguments: 50 )
            },
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Contador con timer'),
            // TODO: implementar ruta correspondiente
            onTap: () {},
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
