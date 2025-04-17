import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  const StackLayoutScreen({super.key});

  /// App Route is: `/layouts/stack`
  static const String route = '/layouts/stack';

  @override
  Widget build(BuildContext context) {
    // * Utilidad para obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Stack Layout')),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
        child: Stack(
          children: [
            paintedBox(Colors.black),
            // * Alineacion mediante positioned
            Positioned(right: 10, top: 10, child: paintedBox(Colors.yellow)),
            Positioned(bottom: 24, left: 5, child: paintedBox(Colors.orange)),
            // * Alineacion mediante Align
            Align(alignment: Alignment(0, 0), child: paintedBox(Colors.purple)),
            Align(
              alignment: Alignment.topCenter,
              child: paintedBox(Colors.blue),
            ),
            // * Más ejemplos de alineacion
            Positioned(
              bottom: size.height * 0.25,
              right: size.width * 0.25,
              child: paintedBox(Colors.green),
            ),
            Align(
              alignment: Alignment(-0.5, 0.75),
              child: paintedBox(Colors.lime),
            ),
          ],
        ),
      ),
    );
  }

  Widget paintedBox(Color color) {
    return Container(height: 50, width: 50, color: color);
  }
}
