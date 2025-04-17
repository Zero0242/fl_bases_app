import 'package:flutter/material.dart';

class GridLayoutScreen extends StatelessWidget {
  const GridLayoutScreen({super.key});

  /// App Route is: `/layouts/grids`
  static const String route = '/layouts/grids';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid Layout')),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          children: [
            FlutterLogo(),
            Text('elementos ordenados en grid'),
            Divider(),
            SizedBox.square(dimension: 30, child: CircularProgressIndicator()),
            Icon(Icons.people),
            Icon(Icons.wifi),
            Icon(Icons.widgets),
            Icon(Icons.zoom_out),
            paintedBox(Colors.black),
            paintedBox(Colors.yellow),
            paintedBox(Colors.orange),
            paintedBox(Colors.purple),
            paintedBox(Colors.blue),
            paintedBox(Colors.green),
            paintedBox(Colors.lime),
          ],
        ),
      ),
    );
  }

  Widget paintedBox(Color color) {
    return Container(height: 50, width: 50, color: color);
  }
}
