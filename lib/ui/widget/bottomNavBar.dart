import 'package:alrounder_app/ui/view/football_screen/matchResultScreenFootball.dart';
import 'package:alrounder_app/ui/view/football_screen/tournamentScreenFootball.dart';
import 'package:alrounder_app/ui/view/home_screen/homeScreen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  String selected = "";

  String bottomNavimagePath;
  String matchDayPath = 'images/matchday.png';
  String resultPath = 'images/result.png';
  String tournamentPath = 'images/tournament.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF3B7300),
        image: DecorationImage(
          image: AssetImage('$bottomNavimagePath'),
          fit: BoxFit.fill,
        ),
      ),
      height: 56,
      width: double.infinity,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bottomNavimagePath = matchDayPath;
                    selected = 'matchDay';
                  });
                  Navigator.pushReplacementNamed(context, HomeScreen.id);
                },
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: selected == "matchDay" ? 18 : 25,
                        width: selected == "matchDay" ? 18 : 25,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/barIcon1.png'),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: selected == 'matchDay',
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            'Match Day',
                            style: TextStyle(
                                fontFamily: 'simplyRounded',
                                fontSize: 8,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bottomNavimagePath = resultPath;
                    selected = "resultPath";
                  });
                  Navigator.pushReplacementNamed(
                      context, MatchResultScreenFootball.id);
                },
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: selected == "resultPath" ? 18 : 25,
                        width: selected == "resultPath" ? 18 : 25,
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage('images/barIcon2.png'),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: selected == 'resultPath',
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            'Match Result',
                            style: TextStyle(
                                fontFamily: 'simplyRounded',
                                fontSize: 8,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  bottomNavimagePath = tournamentPath;
                  selected = "tournamentPath";
                  Navigator.pushReplacementNamed(
                      context, TournamentScreenFootball.id);
                  setState(() {
                    bottomNavimagePath = tournamentPath;
                    selected = "tournamentPath";
                  });
                },
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: selected == "tournamentPath" ? 18 : 25,
                        width: selected == "tournamentPath" ? 18 : 25,
                        decoration: BoxDecoration(
                          // color: Colors.yellow,
                          image: DecorationImage(
                            image: AssetImage('images/barIcon3.png'),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: selected == 'tournamentPath',
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            'Tournament',
                            style: TextStyle(
                                fontFamily: 'simplyRounded',
                                fontSize: 8,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
