import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/favorite_places_page.dart';

class PopularPackagePage extends StatelessWidget {
  const PopularPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final packages = [
      TripPackage(
        image: 'images/package1.png',
        title: 'Santorini Isln',
        date: '16 July - 28 July',
        rating: 4.8,
        price: 820,
        peopleJoined: 24,
      ),
      TripPackage(
        image: 'images/package2.png',
        title: 'Bukita Rayandro',
        date: '20 Sep - 29 Sep',
        rating: 4.3,
        price: 720,
        peopleJoined: 24,
      ),
      TripPackage(
        image: 'images/package3.png',
        title: 'Cluster Omega',
        date: '14 Nov - 22 Nov',
        rating: 4.9,
        price: 942,
        peopleJoined: 26,
      ),
      TripPackage(
        image: 'images/package4.png',
        title: 'Shajek Bandarban',
        date: '12 Dec - 18 Dec',
        rating: 4.5,
        price: 860,
        peopleJoined: 27,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios_new),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Popular Package',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Popular Trip Package',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: packages.length,
                itemBuilder: (context, index) {
                  return TripCard(package: packages[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripPackage {
  final String image;
  final String title;
  final String date;
  final double rating;
  final int price;
  final int peopleJoined;

  TripPackage({
    required this.image,
    required this.title,
    required this.date,
    required this.rating,
    required this.price,
    required this.peopleJoined,
  });
}

class TripCard extends StatelessWidget {
  final TripPackage package;

  const TripCard({required this.package, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => const FavoritePlacesPage()),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(package.image),
              ),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      package.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 14,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          package.date,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 14, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          package.rating.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage("images/user1.png"),
                        ),
                        const SizedBox(width: 4),
                        const CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage("images/user2.png"),
                        ),
                        const SizedBox(width: 4),
                        const CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage("images/user1.png"),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${package.peopleJoined} Person Joined',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '\$${package.price}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
