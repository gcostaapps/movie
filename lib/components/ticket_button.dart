import 'package:flutter/material.dart';
import 'package:movie/animations/load_animation.dart';
import 'package:movie/notifiers/animation_notifier.dart';
import 'package:movie/pages/home/home_page.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';

import '../size_config.dart';

class TicketButton extends StatefulWidget {
  @override
  _TicketButtonState createState() => _TicketButtonState();
}

class _TicketButtonState extends State<TicketButton> {
  bool ticketPressed = false;
  @override
  Widget build(BuildContext context) {
    var animationControl = ticketPressed
        ? CustomAnimationControl.PLAY
        : CustomAnimationControl.STOP;

    return InkWell(
      onTap: () {
        setState(() {
          ticketPressed = !ticketPressed;
        });
        Future.delayed(
            Duration(milliseconds: 1000),
            () => Provider.of<AnimationNotifier>(context, listen: false)
                .playDetailToHomeAnimations());
        Future.delayed(
            Duration(milliseconds: 2000),
            () => Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 0),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      HomePage(),
                )));
      },
      child: LoadAnimation(
        control: animationControl,
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultHeight * 2),
          height: SizeConfig.defaultHeight * 6,
          child: Center(
            child: Opacity(
              opacity: ticketPressed ? 0 : 1,
              child: Text(
                "BUY TICKET",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
