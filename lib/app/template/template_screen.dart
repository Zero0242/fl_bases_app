import 'package:flutter/material.dart';

// * Pantalla de referencia para crear una nueva ruta
class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});

  /// App Route is: `/nombre/de/la/ruta`
  static const String route = '/nombre/de/la/ruta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla de Plantilla')),
      body: Center(
        child: Column(
          children: [Text('Contenido acá'), Text('La ruta es $route')],
        ),
      ),
    );
  }
}
