import 'package:flutter/material.dart';

class PlantSmallCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right:16),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2022/08/27/00/11/plant-7413415_640.png",
              fit:BoxFit.cover,
              height:100,
              width: 100,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name of the product', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Description'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
