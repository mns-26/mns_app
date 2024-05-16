import 'package:flutter/material.dart';
import 'package:to_do/screens/Home.dart';
import 'package:to_do/screens/PlantLanding.dart';
import 'package:to_do/screens/Machine.dart';
import 'package:to_do/screens/Shopping.dart';
import 'package:to_do/screens/travel/HomeTravel.dart';
import 'package:to_do/screens/travel/IntroTravel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //  home: Home() ,
      // home: PlantLanding(),
      // home: Machine(),
        // home: Shopping(),
        // home: HomeTravel(),
        home: IntroTravel()
    );
  }
}
