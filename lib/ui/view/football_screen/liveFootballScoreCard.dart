import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveFootballScoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xffFFDBC5),
            ),
          ),
          width: double.infinity,
          height: 120,
          child: Row(
            children: [
              new Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/realmadrid.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text(
                                    'RMA',
                                    style: GoogleFonts.openSans(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Text(
                              '03',
                              style: TextStyle(
                                fontFamily: 'SimplyRounded',
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        '88:59',
                        style: TextStyle(
                          fontFamily: 'SimplyRounded',
                          fontSize: 12,
                          color: Color(0xffCF1B1B),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/barcelona.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Text(
                                    'BAR',
                                    style: GoogleFonts.openSans(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Text(
                              '02',
                              style: TextStyle(
                                fontFamily: 'SimplyRounded',
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                thickness: 1,
                color: Color(0xffFFDBC5),
              ),
              new Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "UEFA Champions League",
                      style: GoogleFonts.openSans(
                          fontSize: 12.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Semi-Final",
                      style: GoogleFonts.openSans(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
