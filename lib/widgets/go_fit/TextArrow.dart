import 'package:flutter/material.dart';

class TextArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          //color: Color.fromARGB(255, 28, 184, 176),
          // borderRadius: BorderRadius.circular(32),
          ),
      child: Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Expanded(
      child: Text.rich(
        TextSpan(
          text: 'Dare to\ninnovate\n', // Regular style text
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: 'Gofit', // Blue colored text
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    ),
    Icon(Icons.arrow_circle_left_outlined),
    Icon(Icons.arrow_circle_right_outlined),
  ],
),


    );
  }
}
