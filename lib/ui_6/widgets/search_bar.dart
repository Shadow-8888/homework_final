import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          icon: SvgPicture.asset("icons/search.svg"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}