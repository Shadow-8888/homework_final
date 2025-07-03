import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_10/models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20 / 2),
                Row(
                  children: [
                    Text(
                      '${movie.year}',
                      style: const TextStyle(color: Color(0xFF9A9BB2)),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "PG-13",
                      style: TextStyle(color: Color(0xFF9A9BB2)),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "2h 32min",
                      style: TextStyle(color: Color(0xFF9A9BB2)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFFFE6D8E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}