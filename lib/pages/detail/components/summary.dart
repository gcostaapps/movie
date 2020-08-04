import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Summary extends StatelessWidget {
  final String summary;

  const Summary({Key key, @required this.summary}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Summary",
          style: Theme.of(context).textTheme.subtitle2.copyWith(),
        ),
        SizedBox(height: SizeConfig.defaultHeight * 2),
        Text(
          summary,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.black54),
        )
      ],
    );
  }
}
