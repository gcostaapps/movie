import 'package:flutter/material.dart';

import '../size_config.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.defaultHeight * 4,
          left: SizeConfig.defaultWidth,
          child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: null),
        ),
        Positioned(
          top: SizeConfig.defaultHeight * 4,
          right: SizeConfig.defaultWidth,
          child: IconButton(
              icon: Icon(
                Icons.adjust,
                color: Colors.white,
              ),
              onPressed: null),
        )
      ],
    );
  }
}
