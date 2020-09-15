import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchFootballTodayCard extends StatelessWidget {
  const WatchFootballTodayCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 70,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/realmadrid.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5 match going on today',
                        style: GoogleFonts.openSans(
                            fontSize: 10.0, fontWeight: FontWeight.w600),
                      ),
                      MaterialButton(
                        height: 8,
                        minWidth: 70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Color(0xffCF1B1B),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(4.0),
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Watch Now",
                          style: GoogleFonts.openSans(
                              fontSize: 10.0, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/realmadrid.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
