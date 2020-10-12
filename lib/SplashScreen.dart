import 'package:flutter/material.dart';
import 'package:netflix_clone/OnBoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/netflix-logo.gif'),
          // fit: BoxFit.fill
        ),
      ),
    );
  }

  Future<void> _initializeState() async {
    Future.delayed(Duration(milliseconds: 2450), () {
      try {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => OnBoardinScreen()));
      } catch (e) {
        print(e);
      }
    });
  }
}
