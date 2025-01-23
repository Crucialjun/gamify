import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:gamify/features/homepage/data/game_model.dart';

class FeaturedGamesPageviewItem extends StatelessWidget {
  const FeaturedGamesPageviewItem({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExtendedNetworkImageProvider(game.coverImage.url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
