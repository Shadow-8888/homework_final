import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_12/ui_12.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text('bagzz', style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ui_12_avatar.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(vertical: 25, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type here to search",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 21,
                  color: Colors.black,
                ),
                suffix: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => const Ui12()),
                    );
                  },
                  child: const Icon(Icons.close, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
