import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right:16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 158, 153, 228)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(bottom:16),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2024/04/25/06/50/banana-8719086_640.jpg",
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(width: 10), // Adding some space between the image and the text
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Plant name', style: TextStyle(fontSize: 15)),
        Text('Indoor', style: TextStyle(fontSize: 10)),
      ],
    ),
        ],
      ),
    );
  }
}
