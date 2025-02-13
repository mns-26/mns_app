import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/screens/travel/HomeTravel.dart';

class IntroTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.blueAccent,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2016/06/07/10/35/god-1441387_640.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  'Bhutan',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  'With us',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  'Book your next vacation destination with us',
                  style: TextStyle(fontSize:32,color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(24),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeTravel()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Lets get Started',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Icon(Icons.arrow_forward, color:Colors.white)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:16),
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Already have an account? Login'),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(16),
              child: OutlinedButton(
                onPressed: (){},
                child: Text('Skip', style: TextStyle(color: Colors.black),),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
