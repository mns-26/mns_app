import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/screens/travel/HomeTravel.dart';

import '../../screens/travel/TravelDetails.dart';

class MediumTravelCard extends StatelessWidget {
  String title;
  String url;
  String description;

  MediumTravelCard({
    required this.title,
    this.description = "Basic description",
    this.url =
        "https://cdn.pixabay.com/photo/2023/08/05/14/24/twilight-8171206_1280.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeTravel()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(description),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
