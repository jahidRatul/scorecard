import 'dart:async';

import 'package:alrounder_app/ui/view/home_screen/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splash.png'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
