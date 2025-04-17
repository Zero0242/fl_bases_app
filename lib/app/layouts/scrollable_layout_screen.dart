import 'package:flutter/material.dart';

class ScrollableLayoutScreen extends StatelessWidget {
  const ScrollableLayoutScreen({super.key});

  /// App Route is: `/layouts/scrollables`
  static const String route = '/layouts/scrollable';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scrollable Layouts')),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          // * Elementos con scroll deben tener dimensiones definidas al estar dentro de otro scroll
          Text('Scroll horizontal'),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: getImages(),
            ),
          ),
          Divider(),
          // * Elementos con scroll deben tener dimensiones definidas al estar dentro de otro scroll
          Text('Modo "Carrucel"'),
          SizedBox(
            height: 250,
            width: double.infinity,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: getImages(),
            ),
          ),
          Divider(),
          Text('Sub scroll vertical'),
          Container(
            height: 500,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(25),
            ),
            child: PageView(
              scrollDirection: Axis.vertical,
              children: getImages(),
            ),
          ),
          Divider(),
          Text('Sub grid'),
          Container(
            height: 500,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(25),
            ),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: getImages(),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }

  List<Widget> getImages() {
    const url = 'https://picsum.photos';

    return List.generate(
      20,
      (count) =>
          Image.network('$url/${count + 200}', width: 150, fit: BoxFit.cover),
    );
  }
}
