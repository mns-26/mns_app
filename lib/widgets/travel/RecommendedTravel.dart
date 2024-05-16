import 'package:flutter/material.dart';
import 'package:to_do/models/Places.model.dart';

import 'MediumTravelCard.dart';

class RecommendedTravel extends StatelessWidget {
  // const RecommendedTravel({super.key});
   List<String> places = ["China", "India", "Indonesia", "Bhutan"];
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/08/28/20/29/buddha-2691183_640.jpg",
        description: "description 1", title: "title 1"),
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/04/07/17/55/bhutan-2211514_640.jpg",
        description: "description 2", title: "title 2"),
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2022/01/06/11/46/mountains-6919308_640.jpg",
        description: "description 1", title: "title 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:16),
      padding:EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Places',
                style: TextStyle(fontSize: 24),
              ),
              Text('View more'),
            ],
          ),
           Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: placesList.map((PlaceCardModel el) {
                  return MediumTravelCard(
                      title: el.title, description: el.description, url: el.img,
                      );
                }).toList(),
              ),
            )
        ],
      )
    );
  }
}
