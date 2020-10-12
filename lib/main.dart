import 'package:flutter/material.dart';
import 'package:netflix_clone/SplashScreen.dart';

void main() {
  runApp(HomeStart());
}

class HomeStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
