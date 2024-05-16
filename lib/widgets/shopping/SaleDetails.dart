import 'package:flutter/material.dart';

class SaleDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side text
          Text(
            "Today's Sale",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Center static time
          Text(
            "04:43:23", // Static time example
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          // Right side "See More" anchor tag
          TextButton(
            onPressed: () {
              // Add your functionality here
            },
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}