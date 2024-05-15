import 'package:flutter/material.dart';
import 'package:to_do/widgets/shopping/SearchBarIcons.dart';
import 'package:to_do/widgets/shopping/ImageSlide.dart';
import 'package:to_do/widgets/shopping/BrandLogo.dart';


class Shopping extends StatelessWidget {
  const Shopping ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              SearchBarIcons(),
              ImageSlide(),
              BrandLogo()
              // RecommendedPlants(),
              // RecentlyReviewed(),
              // LatestProducts()
          ],
        ),
      ),
    );
  }
}
