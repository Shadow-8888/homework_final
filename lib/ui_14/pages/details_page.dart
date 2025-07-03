import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/view_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'images/house.png',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const CircleAvatar(
                          backgroundColor: Color.fromRGBO(27, 30, 40, 0.16),
                          child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromRGBO(27, 30, 40, 0.16),
                        child: Icon(Icons.bookmark_border, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                  child: ColoredBox(
                    color: Colors.white,
                    child: SizedBox(height: 24),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Niladri Reservoir',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Tekergat, Sunamgnj',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Image.asset('images/avatar.png'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.grey, size: 16),
                          SizedBox(width: 4),
                          Text('Tekergat', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text('4.7 (2498)', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 15),
                          children: [
                            TextSpan(
                              text: '\$59/',
                              style: TextStyle(color: Color.fromRGBO(13, 110, 253, 1)),
                            ),
                            TextSpan(
                              text: 'Person',
                              style: TextStyle(color: Color.fromRGBO(125, 132, 141, 1)),
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 56,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, index) => const SizedBox(width: 12),
                      itemBuilder: (context, index) => ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'images/house${index + 1}.png',
                          width: 56,
                          height: 56,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'About Destination',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const Text.rich(
                    TextSpan(
                      text: 'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... ',
                      children: [
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(color: Colors.deepOrangeAccent)
                        )
                      ],
                    ),
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (v) => const ViewPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D6EFD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Book Now',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
