import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_12/pages/description_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
                  const Text(
                    'bagzz',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('images/ui_12_avatar.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  PageView(
                    children: [
                      Image.asset("images/header_image.png", fit: BoxFit.cover),
                    ],
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          color: Colors.white,
                          child: const Text("This season's"),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          color: Colors.white,
                          child: const Text("latest"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              children: const [
                ProductCard(name: 'Artsy', imageUrl: 'images/image1.png'),
                ProductCard(name: 'Berkely', imageUrl: 'images/image2.png'),
                ProductCard(name: 'Capucinus', imageUrl: 'images/image3.png'),
                ProductCard(name: 'Monogram', imageUrl: 'images/image4.png'),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Shop by categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  children: const [
                    CategoryCard(
                      name: 'Handle bags',
                      imageUrl: 'images/card_image1.png',
                    ),
                    CategoryCard(
                      name: 'Crossbody bags',
                      imageUrl: 'images/card_image2.png',
                    ),
                    CategoryCard(
                      name: 'Shoulder bags',
                      imageUrl: 'images/card_image3.png',
                    ),
                    CategoryCard(
                      name: 'Tote bag',
                      imageUrl: 'images/card_image4.png',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
  }
}


class CategoryCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CategoryCard({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover),
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.black,
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ProductCard({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => const DescriptionPage()),
        );
      },
      child: Card(
        color: const Color(0xFFF1F1F1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageUrl, height: 111, width: 111),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Text(
              'SHOP NOW',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(height: 2, width: 88, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
