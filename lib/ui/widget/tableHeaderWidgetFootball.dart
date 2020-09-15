import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableHeaderWidgetFootball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(1.5),
          1: FlexColumnWidth(3.0),
        },
        children: [
          TableRow(
              decoration: BoxDecoration(
                color: Color(0xff61A300),
              ),
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'SL',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Team',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: Text(
                      'MP',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: Text(
                      'W',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: Text(
                      'D',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: Text(
                      'L',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: Text(
                      'GD',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: Text(
                      'Pts',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
