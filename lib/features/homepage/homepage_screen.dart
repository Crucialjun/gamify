import 'package:flutter/material.dart';
import 'package:gamify/features/homepage/data/game_model.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: PageView.builder(
                      itemCount: featuredGames.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var game = featuredGames[index];
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(game.coverImage.url),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
