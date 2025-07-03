import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/messages_page.dart';

class FavoritePlacesPage extends StatelessWidget {
  const FavoritePlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final places = [
      FavoritePlace(
        image: 'images/place1.png',
        title: 'Niladri Reservoir',
        location: 'Tekerghat, Sunamgnj',
      ),
      FavoritePlace(
        image: 'images/place2.png',
        title: 'Casa Las Tirtugas',
        location: 'Av Damero, Mexico',
      ),
      FavoritePlace(
        image: 'images/place3.png',
        title: 'Aonang Villa Resort',
        location: 'Bastola, Islampur',
      ),
      FavoritePlace(
        image: 'images/place4.png',
        title: 'Rangauti Resort',
        location: 'Sylhet, Airport Road',
      ),
      FavoritePlace(
        image: 'images/place5.png',
        title: 'Kachura Resort',
        location: 'Vellima, Island',
      ),
      FavoritePlace(
        image: 'images/place6.png',
        title: 'Shakardu Resort',
        location: 'Shakartu, Pakistan',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: const Icon(Icons.arrow_back_ios_new)
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Favorite Places',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Favorite Places',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: places.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.82,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return FavoritePlaceCard(place: places[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritePlace {
  final String image;
  final String title;
  final String location;

  FavoritePlace({
    required this.image,
    required this.title,
    required this.location,
  });
}

class FavoritePlaceCard extends StatelessWidget {
  final FavoritePlace place;

  const FavoritePlaceCard({required this.place, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (c) => const MessagesPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    place.image,
                    width: double.infinity,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 14,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.title,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          place.location,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
