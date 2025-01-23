import 'package:flutter/material.dart';

import 'package:gamify/features/homepage/presentation/widgets/featured_games.dart';
import 'package:gamify/features/homepage/presentation/widgets/homepage_gradient.dart';
import 'package:gamify/features/homepage/presentation/widgets/top_layer.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final number = ValueNotifier(0);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FeaturedGames(
            pageNotifier: number,
            pageController: pageController,
          ),
          HomepageGradient(),
          ValueListenableBuilder(
            valueListenable: number,
            builder: (BuildContext context, dynamic value, Widget? child) {
              return TopLayer(
                pageController: pageController,
                pageNumber: number.value,
              );
            },
          ),
        ],
      ),
    );
  }
}
