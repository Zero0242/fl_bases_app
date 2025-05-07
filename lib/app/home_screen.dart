import 'package:flutter/material.dart';
import 'package:flutter_basics_app/app/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /// App Route is: `/`
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      // * Forma para hacer scrollable un elemento column
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Contadores'),
            Divider(),
            ListTile(
              title: Text('Contador'),
              onTap: () {
                Navigator.of(context).pushNamed(CounterScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Contador 10'),
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(CounterScreen.route, arguments: 10);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Contador 25'),
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(CounterScreen.route, arguments: 25);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Contador 50'),
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(CounterScreen.route, arguments: 50);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Contador 75'),
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(CounterScreen.route, arguments: 75);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Contador 10 25 50 75 100'),
              onTap: () {
                Navigator.of(context)
                  ..pushNamed(CounterScreen.route, arguments: 10)
                  ..pushNamed(CounterScreen.route, arguments: 25)
                  ..pushNamed(CounterScreen.route, arguments: 50)
                  ..pushNamed(CounterScreen.route, arguments: 75)
                  ..pushNamed(CounterScreen.route, arguments: 100);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Contador con timer'),
              onTap: () {
                Navigator.of(context).pushNamed(CounterTimerScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            SizedBox(height: 40),
            Text('Layouts'),
            Divider(),
            ListTile(
              title: Text('Vertical Layout'),
              onTap: () {
                Navigator.of(context).pushNamed(VerticalLayoutScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Horizontal Layout'),
              onTap: () {
                Navigator.of(context).pushNamed(HorizontalLayoutScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Grid Layout'),
              onTap: () {
                Navigator.of(context).pushNamed(GridLayoutScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Stack Layout'),
              onTap: () {
                Navigator.of(context).pushNamed(StackLayoutScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Scrollable Layout'),
              onTap: () {
                Navigator.of(context).pushNamed(ScrollableLayoutScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            SizedBox(height: 40),
            Text('Formularios'),
            Divider(),
            ListTile(
              title: Text('Formulario Simple'),
              subtitle: Text('Inputs y validación simple'),
              onTap: () {
                Navigator.of(context).pushNamed(SimpleFormScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Formulario 2'),
              subtitle: Text('Inputs y otros tipos de fields'),
              onTap: () {
                Navigator.of(context).pushNamed(NotificationFormScreen.route);
              },
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
