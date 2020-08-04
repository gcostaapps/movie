import 'package:flutter/material.dart';
import 'package:movie/components/back_container.dart';
import 'package:movie/components/movie/movie_header.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/notifiers/animation_notifier.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../size_config.dart';

class MoviePreview extends StatelessWidget {
  final int index;
  const MoviePreview({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultWidth * 2),
      child: BackContainer(child: Consumer<AnimationNotifier>(
        builder: (context, value, child) {
          var controlAnimation = value.animateHomeToDetail
              ? CustomAnimationControl.PLAY
              : CustomAnimationControl.PLAY_REVERSE_FROM_END;

          return CustomAnimation(
            control: controlAnimation,
            tween: Tween(begin: 1.0, end: 0.0),
            duration: Duration(milliseconds: 120),
            builder: (context, child, value) {
              return Column(
                children: [
                  Transform.scale(
                    scale: value,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(SizeConfig.defaultHeight * 3),
                      child: Container(
                        height: SizeConfig.defaultHeight * 40,
                        child: Image.asset(movies[index].imageUrl),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.defaultHeight),
                  Opacity(
                    opacity: value,
                    child: MovieHeader(
                      movie: movies[index],
                    ),
                  )
                ],
              );
            },
          );
        },
      )),
    );
  }
}
