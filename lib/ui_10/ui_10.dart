import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul4_jabborov/ui_10/components/categories.dart';
import 'package:modul4_jabborov/ui_10/components/genres.dart';
import 'package:modul4_jabborov/ui_10/components/movie_carousel.dart';

class Ui10 extends StatelessWidget {
  const Ui10({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const SingleChildScrollView(
      child: Column(
        children: [
          Categorylist(),
          Genres(),
          SizedBox(height: 20),
          MovieCarousel(),
        ],
      ),
    ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: 20.0),
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}