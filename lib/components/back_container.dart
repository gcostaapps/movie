import 'package:flutter/material.dart';

import '../size_config.dart';

class BackContainer extends StatelessWidget {
  final Widget child;

  const BackContainer({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(SizeConfig.defaultHeight * 4),
                topRight: Radius.circular(SizeConfig.defaultHeight * 4))),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.defaultHeight * 3,
              horizontal: SizeConfig.defaultWidth * 3),
          child: child,
        ));
  }
}
