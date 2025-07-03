import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({super.key, required this.cast});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20 / 2),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
          ),
          const SizedBox(height: 20 / 4),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xFF9A9BB2)),
          ),
        ],
      ),
    );
  }
}