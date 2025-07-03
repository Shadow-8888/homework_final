import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/edit_profile_page.dart';
import 'package:modul4_jabborov/ui_14/pages/favorite_places_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: const Icon(Icons.arrow_back_ios_new)
                  ),
                  const Spacer(),
                  const Text(
                    'Profile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(icon: const Icon(Icons.edit), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => const EditProfilePage()));
                  }),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.pinkAccent,
              child: Image.asset("images/ui_14_user.png"),
            ),
            const SizedBox(height: 12),
            const Text(
              'Leonardo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'leonardo@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _StatColumn(title: 'Reward Points', value: '360'),
                    _StatColumn(title: 'Travel Trips', value: '238'),
                    _StatColumn(title: 'Bucket List', value: '473'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _ProfileTile(icon: Icons.person_outline, title: 'Profile'),
                  _ProfileTile(
                    icon: Icons.bookmark_border,
                    title: 'Bookmarked',
                  ),
                  _ProfileTile(
                    icon: Icons.travel_explore_outlined,
                    title: 'Previous Trips',
                  ),
                  _ProfileTile(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                  ),
                  _ProfileTile(icon: Icons.info_outline, title: 'Version'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  final String title;
  final String value;

  const _StatColumn({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ProfileTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.grey.shade700),
          title: Text(title),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (c) => const FavoritePlacesPage()),
            );
          },
        ),
        const Divider(height: 0),
      ],
    );
  }
}
