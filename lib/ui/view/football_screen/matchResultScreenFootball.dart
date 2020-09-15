import 'package:alrounder_app/ui/view/football_screen/matchResultCard.dart';
import 'package:alrounder_app/ui/widget/bottomNavBar.dart';
import 'package:flutter/material.dart';

class MatchResultScreenFootball extends StatefulWidget {
  static String id = 'matchResultFootball';

  @override
  _MatchResultScreenFootballState createState() =>
      _MatchResultScreenFootballState();
}

class _MatchResultScreenFootballState extends State<MatchResultScreenFootball> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCFC),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Match Day'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Match Results'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Tournament'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('WatchNow'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Showing: ',
              style: TextStyle(
                fontFamily: 'SimplyRounded',
                fontSize: 18,
              ),
            ),
            Text(
              'Football',
              style: TextStyle(
                fontFamily: 'SimplyRounded',
                fontSize: 18,
                color: Color(0xFF423144),
              ),
            ),
          ],
        ),
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: Image.asset('images/menuIcon.png'),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/football_icon.png'),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
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
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Text(
                        'Match Result',
                        style: TextStyle(
                          fontFamily: 'SimplyRounded',
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 5),
                                color: Colors.black12)
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            MatchResultCard(),
                            SizedBox(
                              height: 8,
                            ),
                            MatchResultCard(),
                            SizedBox(
                              height: 8,
                            ),
                            MatchResultCard(),
                            SizedBox(
                              height: 8,
                            ),
                            MatchResultCard(),
                            SizedBox(
                              height: 8,
                            ),
                            MatchResultCard(),
                            SizedBox(
                              height: 8,
                            ),
                            MatchResultCard(),
                            SizedBox(
                              height: 8,
                            ),
                            MatchResultCard(),
                          ],
                        ),
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
