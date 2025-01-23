import 'package:flutter/material.dart';
import 'package:gamify/features/homepage/data/game_model.dart';
import 'package:gamify/features/homepage/presentation/homepage_screen.dart';
import 'package:gamify/features/homepage/presentation/widgets/featured_games_page_view_item.dart';

class FeaturedGames extends StatelessWidget {
  const FeaturedGames({
    super.key,
    required this.pageNotifier,
    required this.pageController,
  });

  final ValueNotifier<int> pageNotifier;
  final PageController pageController;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                pageNotifier.value = value;
              },
                itemCount: featuredGames.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var game = featuredGames[index];
                  return FeaturedGamesPageviewItem(game: game);
                }),
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }
}

