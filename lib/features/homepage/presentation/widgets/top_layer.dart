import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:gamify/features/homepage/data/game_model.dart';
import 'package:gamify/features/homepage/presentation/widgets/featured_game_details.dart';
import 'package:gamify/features/homepage/presentation/widgets/games_list_view.dart';
import 'package:gamify/features/homepage/presentation/widgets/top_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TopLayer extends StatelessWidget {
  const TopLayer({
    super.key,
    required this.pageNumber,
    required this.pageController,
  });

  final int pageNumber;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 13, child: TopBar()),
          Expanded(flex: 13, child: SizedBox()),
          Expanded(
            flex: 12,
            child: FeaturedGameDetails(
                pageNumber: pageNumber, pageController: pageController),
          ),
          Expanded(flex: 2, child: SizedBox()),
          Expanded(
            flex: 24,
            child: GamesListView(
              gamesList: games,
            ),
          ),
          Expanded(flex: 2, child: SizedBox()),
          Expanded(
              flex: 13,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: ExtendedNetworkImageProvider(
                          featuredGames[3].coverImage.url),
                      fit: BoxFit.cover,
                    )),
              )),
          Expanded(flex: 2, child: SizedBox()),
          Expanded(
            flex: 18,
            child: GamesListView(
              isText: false,
              gamesList: games2,
            ),
          ),
          Expanded(flex: 2, child: SizedBox()),
        ],
      ),
    );
  }
}
