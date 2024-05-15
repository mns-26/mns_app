import 'package:flutter/material.dart';

class SearchBarIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Expanded search bar container
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 184, 176),
                borderRadius: BorderRadius.horizontal(left: Radius.circular(32), right: Radius.circular(32)),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Notification and delete icons container
          Row(
            children: [
              Icon(Icons.notifications),
              SizedBox(width: 16), // Space between icons
              Icon(Icons.delete),
            ],
          ),
        ],
      ),
    );
  }
}
