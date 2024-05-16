import 'package:flutter/material.dart';

class ImageSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Converse x',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Description  Description Description Description Description',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your shop now button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Set background color to black
                    foregroundColor:
                        Colors.white, // Set text color to white for readability
                  ),
                  child: Text('Shop Now'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2016/12/16/14/56/shoes-1911553_640.jpg", // Replace this URL with your image URL
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
