import 'package:flutter/material.dart';
import 'package:to_do/widgets/travel/PopularCard.travel.dart';
import '../../models/Places.model.dart';

class PopularTravel extends StatelessWidget {
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/08/28/20/33/tigers-nest-2691190_640.jpg",
        description: "description 1", title: "title 1"),
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/09/30/07/26/bhutan-2801349_640.jpg",
        description: "description 2", title: "title 2"),
    PlaceCardModel(
        img: "https://cdn.pixabay.com/photo/2017/09/07/13/21/palace-2725141_640.jpg",
        description: "description 1", title: "title 3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:8),
            padding: EdgeInsets.only(left:16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: placesList.map((PlaceCardModel el){
                  return  PopularCardTravel(place:el);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}