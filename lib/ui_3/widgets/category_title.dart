import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({super.key, required this.title, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: active ? const Color(0xFFFB475F) : const Color(0xFF1D150B).withAlpha(102),
        ),
      ),
    );
  }
}
