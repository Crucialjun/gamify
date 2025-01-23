import 'package:flutter/material.dart';
import 'package:gamify/features/homepage/data/game_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturedGameDetails extends StatelessWidget {
  const FeaturedGameDetails({
    super.key,
    required this.pageNumber,
    required this.pageController,
  });

  final int pageNumber;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            featuredGames[pageNumber].title,
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: featuredGames.length,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Colors.green,
              dotColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
