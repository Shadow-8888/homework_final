
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;

  const Counter({
    super.key,
    required this.number,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withAlpha(66),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text("$number", style: TextStyle(fontSize: 40, color: color)),
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: Color(0xFF959595)),
        ),
      ],
    );
  }
}
