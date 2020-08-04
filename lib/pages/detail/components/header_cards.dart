import 'package:flutter/material.dart';
import 'package:movie/animations/staggered_translate_animation.dart';
import 'package:movie/models/movie.dart';

import '../../../size_config.dart';

class HeaderCards extends StatelessWidget {
  final int indexMovie;

  const HeaderCards({Key key, this.indexMovie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (indexMovie - 1 >= 0)
          Positioned(
            left: 0,
            top: SizeConfig.defaultHeight * 10,
            child: StaggeredTranslateAnimation(
              delay: 150,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(SizeConfig.defaultHeight * 3),
                child: Container(
                  width: SizeConfig.screenWidth / 2,
                  child: Image.asset(
                    movies[indexMovie - 1].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        if (indexMovie + 1 <= movies.length - 1)
          Positioned(
            right: 0,
            top: SizeConfig.defaultHeight * 10,
            child: StaggeredTranslateAnimation(
              translateX: 200,
              delay: 300,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(SizeConfig.defaultHeight * 3),
                child: Container(
                  width: SizeConfig.screenWidth / 2,
                  child: Image.asset(
                    movies[indexMovie + 1].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          left: SizeConfig.screenWidth / 4,
          child: StaggeredTranslateAnimation(
            translateX: 0,
            translateY: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(SizeConfig.defaultHeight * 3),
              child: Container(
                width: SizeConfig.screenWidth / 2,
                child: Image.asset(
                  movies[indexMovie].imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
