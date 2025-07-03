import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_10/details_screen/components/backdrop_rating.dart';
import 'package:modul4_jabborov/ui_10/details_screen/components/cast_and_crew.dart';
import 'package:modul4_jabborov/ui_10/details_screen/components/genres.dart';
import 'package:modul4_jabborov/ui_10/details_screen/components/title_duration_and_fav_btn.dart';
import 'package:modul4_jabborov/ui_10/models/movie.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          const SizedBox(height: 20 / 2),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20 / 2,
              horizontal: 20,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}