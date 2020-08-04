import 'package:flutter/material.dart';
import 'package:movie/components/movie/movie_genres.dart';
import 'package:movie/models/movie.dart';

import '../../size_config.dart';
import 'movie_rate.dart';

class MovieHeader extends StatelessWidget {
  final Movie movie;

  const MovieHeader({Key key, @required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          movie.name,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: SizeConfig.defaultHeight),
        MovieGenres(
          genres: movie.genres,
        ),
        SizedBox(height: SizeConfig.defaultHeight),
        MovieRate(
          rate: movie.rate,
        )
      ],
    );
  }
}
