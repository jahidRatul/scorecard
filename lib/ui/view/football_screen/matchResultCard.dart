import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            "Round 11",
            style: GoogleFonts.openSans(
                fontSize: 10.0, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/exm.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Bayern Munich',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.openSans(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    '01',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'SimplyRounded',
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
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
                Container(
                  width: 1,
                  height: 80,
                  color: Color(0xffFFDBC5),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Bayern Munich',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.openSans(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '03',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'SimplyRounded',
                                      fontSize: 18,
                                      color: Color(0xffCF1B1B),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/exm.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Color(0xffFFDBC5),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff61A300),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "European Champions League ",
                    style: GoogleFonts.openSans(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Text(
                          "04-09-2020",
                          style: GoogleFonts.openSans(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 2,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          "10:30 PM",
                          style: GoogleFonts.openSans(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
