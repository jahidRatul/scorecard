import 'package:alrounder_app/ui/view/football_screen/teamScoreScreenFootball.dart';
import 'package:flutter/material.dart';

class FootballLeagueCard extends StatelessWidget {
  final String name;
  final Color colorCode;

  FootballLeagueCard({this.name, this.colorCode});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, TeamScoreScreenFootball.id);
        },
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: colorCode,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/exm.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'SimplyRounded',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
