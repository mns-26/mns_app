import 'package:flutter/material.dart';

class MachineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 500,
            margin: EdgeInsets.all(23),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              child: Image.network(
                "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Expanded(
              child: Text.rich(
                TextSpan(
                  text:
                      'Duck is the common name for numerous species of waterfowl in the family Anatidae. Ducks are generally smaller and shorter-necked than swans and geese, which are members of the same family.\n', // Regular style text
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'See how it works', // Blue colored text
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              // child: Text(
              //   'Duck is the common name for numerous species of waterfowl in the family Anatidae. Ducks are generally smaller and shorter-necked than swans and geese, which are members of the same family.',
              //   style: TextStyle(fontSize: 20),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
