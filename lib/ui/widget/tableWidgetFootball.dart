import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableWidgetFootball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(3.0),
        },
        children: [
          TableRow(decoration: BoxDecoration(), children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '01',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                child: Center(
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/exm.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Leicester City ',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(
                  '38',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(
                  '32',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(
                  '3',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(
                  '3',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(
                  '52',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(
                  '999',
                  style: GoogleFonts.openSans(
                      fontSize: 10.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
