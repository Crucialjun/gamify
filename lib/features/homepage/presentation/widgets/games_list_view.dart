import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:gamify/features/homepage/data/game_model.dart';


class GamesListView extends StatelessWidget {
  const GamesListView({
    super.key,
    this.isText = true,
    required this.gamesList,
  });

  final bool isText;
  final List<Game> gamesList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: games.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: ExtendedNetworkImageProvider(
                          gamesList[index].coverImage.url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              if (isText)
                Expanded(
                  flex: 1,
                  child: Text(
                    gamesList[index].title,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    ));
  }
}
