import 'package:flutter/material.dart';

import '../../size_config.dart';

class MovieRate extends StatelessWidget {
  final double rate;

  const MovieRate({Key key, @required this.rate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          rate.toString(),
          style:
              Theme.of(context).textTheme.caption.copyWith(color: Colors.black),
        ),
        SizedBox(
          width: SizeConfig.defaultWidth / 2,
        ),
        Row(
          children: [
            ...List.generate(
                (rate / 2).floor(),
                (index) => Icon(
                      Icons.star,
                      size: SizeConfig.defaultHeight * 1.5,
                      color: Colors.red,
                    )),
            ...List.generate(
                5 - (rate / 2).floor(),
                (index) => Icon(
                      Icons.star_border,
                      size: SizeConfig.defaultHeight * 1.5,
                      color: Colors.black45,
                    )),
          ],
        )
      ],
    );
  }
}
