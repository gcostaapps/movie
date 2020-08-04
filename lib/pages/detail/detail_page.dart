import 'package:flutter/material.dart';
import 'package:movie/animations/opacity_scale_animation.dart';
import 'package:movie/animations/width_animation.dart';
import 'package:movie/components/back_container.dart';
import 'package:movie/components/header.dart';
import 'package:movie/components/movie/movie_header.dart';
import 'package:movie/components/ticket_button.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/notifiers/animation_notifier.dart';
import 'package:movie/pages/detail/components/cast.dart';
import 'package:movie/pages/detail/components/summary.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';
import 'components/header_cards.dart';

class DetailPage extends StatefulWidget {
  final Movie movie;

  const DetailPage({Key key, this.movie}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPop(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            HeaderCards(
              indexMovie: movies.indexOf(widget.movie),
            ),
            Header(),
            Container(
              height: SizeConfig.screenHeight * 0.7,
              child: WidthAnimation(
                  begin: SizeConfig.screenWidth * 0.6,
                  end: SizeConfig.screenWidth,
                  child: BackContainer(
                    child: Container(),
                  )),
            ),
            Container(
              height: SizeConfig.screenHeight * 0.7,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.defaultWidth,
                    vertical: SizeConfig.defaultHeight * 2),
                physics: BouncingScrollPhysics(),
                child: OpacityScaleAnimation(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieHeader(movie: widget.movie),
                      SizedBox(height: SizeConfig.defaultHeight),
                      Center(
                        child: Text(
                          "Director / ${widget.movie.director}",
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.black87),
                        ),
                      ),
                      SizedBox(height: SizeConfig.defaultHeight * 4),
                      Cast(
                        cast: widget.movie.cast,
                      ),
                      SizedBox(height: SizeConfig.defaultHeight * 4),
                      Summary(summary: widget.movie.summary),
                      SizedBox(height: SizeConfig.defaultHeight * 8),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: SizeConfig.defaultHeight * 2,
              child: WidthAnimation(
                begin: SizeConfig.screenWidth * 0.5,
                end: SizeConfig.screenWidth - SizeConfig.defaultWidth * 2,
                child: Center(child: TicketButton()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _willPop() {
    Provider.of<AnimationNotifier>(context, listen: false)
        .playDetailToHomeAnimations();
    return Future.delayed(Duration(milliseconds: 300), () => true);
  }
}
