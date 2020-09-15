import 'package:alrounder_app/ui/widget/tableHeaderWidgetFootball.dart';
import 'package:alrounder_app/ui/widget/tableWidgetFootball.dart';
import 'package:flutter/material.dart';

class TeamScoreScreenFootball extends StatefulWidget {
  static String id = 'teamScoreFootball';

  @override
  _TeamScoreScreenFootballState createState() =>
      _TeamScoreScreenFootballState();
}

class _TeamScoreScreenFootballState extends State<TeamScoreScreenFootball> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCFC),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tournament',
          style: TextStyle(fontFamily: 'SimplyRounded', fontSize: 18),
        ),
        leading: IconButton(
          icon: Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/back.png'), fit: BoxFit.contain),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
              elevation: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'English PremierLeague 19/20',
                          style: TextStyle(
                            fontFamily: 'SimplyRounded',
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TableHeaderWidgetFootball(),
                    Container(
                      height: 30 * 20.0,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 20,
                        itemBuilder: (_, i) => TableWidgetFootball(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
