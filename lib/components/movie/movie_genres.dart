import 'package:flutter/material.dart';

import '../../size_config.dart';

class MovieGenres extends StatelessWidget {
  final List<String> genres;

  const MovieGenres({Key key, @required this.genres}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...genres.map((genre) => Container(
              margin: EdgeInsets.only(left: SizeConfig.defaultWidth),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultWidth,
                  vertical: SizeConfig.defaultHeight / 2),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius:
                      BorderRadius.circular(SizeConfig.defaultWidth * 2)),
              child: Text(
                genre,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
              ),
            ))
      ],
    );
  }
}
