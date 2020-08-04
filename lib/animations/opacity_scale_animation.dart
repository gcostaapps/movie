import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie/notifiers/animation_notifier.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';

class OpacityScaleAnimation extends StatelessWidget {
  final Widget child;

  const OpacityScaleAnimation({Key key, @required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<AnimationNotifier>(
        builder: (context, value, child) {
          var controlAnimation = value.animateHomeToDetail
              ? CustomAnimationControl.PLAY
              : CustomAnimationControl.PLAY_REVERSE_FROM_END;

          var reverseTimeFactor = value.animateHomeToDetail ? 1 : 0.4;
          return CustomAnimation(
            control: controlAnimation,
            tween: Tween(begin: 0.0, end: 1.0),
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: (500 * reverseTimeFactor).toInt()),
            builder: (context, child, value) {
              return Transform.scale(
                scale: min(value * 3, 1),
                child: Opacity(opacity: value, child: child),
              );
            },
            child: child,
          );
        },
        child: child);
  }
}
