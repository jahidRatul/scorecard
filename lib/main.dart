import 'package:alrounder_app/ui/view/football_screen/matchResultScreenFootball.dart';
import 'package:alrounder_app/ui/view/football_screen/teamScoreScreenFootball.dart';
import 'package:alrounder_app/ui/view/football_screen/tournamentScreenFootball.dart';
import 'package:alrounder_app/ui/view/home_screen/homeScreen.dart';
import 'package:alrounder_app/ui/view/splash_screen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff61A300),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        MatchResultScreenFootball.id: (context) => MatchResultScreenFootball(),
        TournamentScreenFootball.id: (context) => TournamentScreenFootball(),
        TeamScoreScreenFootball.id: (context) => TeamScoreScreenFootball(),
      },
    );
  }
}
