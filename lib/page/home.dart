import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome!'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemGrid(),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String imageUrl;
  final String title;
  final String url;

  Item({required this.imageUrl, required this.title, required this.url});
}

class ItemGrid extends StatelessWidget {
  final List<Item> items = [
    Item(
        imageUrl: 'assets/on-progress.png',
        title: 'Progress Indicator',
        url: '/progress'),
    Item(imageUrl: 'assets/brain.png', title: 'Quiz', url: '/quiz'),
    Item(imageUrl: 'assets/user.png', title: 'Profile', url: '/profile'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double gridHeight = screenHeight * 0.6;

    return SizedBox(
      height: gridHeight,
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: const EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: items.map((item) {
          return CardPrimary(
            imageUrl: item.imageUrl,
            title: item.title,
            url: item.url,
          );
        }).toList(),
      ),
    );
  }
}

class CardPrimary extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;

  CardPrimary({required this.imageUrl, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, url),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imageUrl,
                width: 100, // Ancho de la imagen
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
