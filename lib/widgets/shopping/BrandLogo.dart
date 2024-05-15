import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCircularBrandLogoWithName(
              imageUrl: "https://cdn.pixabay.com/photo/2017/11/29/18/54/leaf-2986837_640.jpg",
              name: 'Nike',
            ),
            SizedBox(width: 20.0),
            _buildCircularBrandLogoWithName(
              imageUrl: "https://cdn.pixabay.com/photo/2017/11/29/18/54/leaf-2986837_640.jpg",
              name: 'Adidas',
            ),
            SizedBox(width: 20.0),
            _buildCircularBrandLogoWithName(
              imageUrl: "https://cdn.pixabay.com/photo/2017/11/29/18/54/leaf-2986837_640.jpg",
              name: 'Puma',
            ),
            SizedBox(width: 20.0),
            _buildCircularBrandLogoWithName(
              imageUrl: "https://cdn.pixabay.com/photo/2017/11/29/18/54/leaf-2986837_640.jpg",
              name: 'New Balance',
            ),
            SizedBox(width: 20.0),
            _buildCircularBrandLogoWithName(
              imageUrl: "https://cdn.pixabay.com/photo/2017/11/29/18/54/leaf-2986837_640.jpg",
              name: 'Converse',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularBrandLogoWithName({required String imageUrl, required String name}) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: ClipOval(
              child: Image.network(
                imageUrl,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
