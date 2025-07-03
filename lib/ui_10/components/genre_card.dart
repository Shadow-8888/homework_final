import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({super.key, required this.genre});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 20.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20 / 4,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(color: const Color(0xFF12153D).withAlpha(204), fontSize: 16),
      ),
    );
  }
}