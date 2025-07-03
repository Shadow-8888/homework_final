import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/details_page.dart';
import 'package:modul4_jabborov/ui_14/pages/messages_page.dart';
import 'package:modul4_jabborov/ui_14/pages/notification_page.dart';
import 'package:modul4_jabborov/ui_14/pages/profile_page.dart';
import 'package:modul4_jabborov/ui_14/pages/schedule_page.dart';
import 'package:modul4_jabborov/ui_14/pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    const Home(),
    const SchedulePage(),
    const SearchPage(),
    const MessagesPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 36),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => const DetailsPage()),
        );
      },
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              blurRadius: 18,
              color: Colors.black.withAlpha(20),
              offset: const Offset(0, 8),
            ),
          ],
        ),
        margin: const EdgeInsets.only(bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                  child: Image.asset(
                    "images/place1.png",
                    height: 140,
                    width: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.bookmark_border, color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Niladri Reservoir",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  const SizedBox(height: 6),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text(
                        "4.7",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Tekergat, Sunamgnj",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("images/avatar1.png"),
                      ),
                      SizedBox(width: 4),
                      CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("images/avatar2.png"),
                      ),
                      SizedBox(width: 4),
                      CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.white,
                        child: Text("+50", style: TextStyle(fontSize: 10)),
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey[200],
                child: Image.asset("images/ui_14_user.png"),
              ),
              const SizedBox(width: 10),
              const Text(
                'Leonardo',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => const NotificationPage()),
                  );
                },
                child: const Icon(
                  Icons.notification_add_outlined,
                  color: Colors.grey,
                  size: 28,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 32, color: Colors.black),
              children: [
                TextSpan(text: "Explore the\n"),
                TextSpan(
                  text: "Beautiful ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "world!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              Text(
                "Best Destination",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              Spacer(),
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 310,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DestinationCard(),
                SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
