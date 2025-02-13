import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color.fromARGB(255, 236, 150, 150)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: 300,
            margin: EdgeInsets.only(bottom: 16),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/06/12/01/22/lotus-8057438_640.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Indoor',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text('Plant name',
              style: TextStyle(color: Colors.white, fontSize: 24)),
        ],
      ),
    );
  }
}
