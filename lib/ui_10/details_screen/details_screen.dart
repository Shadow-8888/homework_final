import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_10/details_screen/components/body.dart';
import 'package:modul4_jabborov/ui_10/models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Body(movie: movie);
  }
}