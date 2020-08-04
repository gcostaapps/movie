import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie/components/movie/movie_header.dart';
import 'package:movie/components/ticket_button.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/notifiers/animation_notifier.dart';
import 'package:movie/pages/detail/detail_page.dart';
import 'package:movie/size_config.dart';
import 'package:provider/provider.dart';

import '../../components/header.dart';
import 'components/linked_page_view.dart';
import 'components/movie_preview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LinkedPageView(
            itemCount: movies.length,
            backViewBuilder: (index) => Container(
              child: Image.asset(
                movies[index].imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            frontViewBuilder: (index) => GestureDetector(
                onTap: () {
                  Provider.of<AnimationNotifier>(context, listen: false)
                      .playHomeToDetailAnimations();
                  Future.delayed(
                      Duration(milliseconds: 120),
                      () => Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 0),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    DetailPage(
                              movie: movies[index],
                            ),
                          )));
                },
                child: MoviePreview(index: index)),
          ),
          Header(),
          Positioned(
            bottom: SizeConfig.defaultHeight * 2,
            child: SizedBox(
              width: SizeConfig.screenWidth * 0.5,
              child: Center(child: TicketButton()),
            ),
          ),
        ],
      ),
    );
  }
}
