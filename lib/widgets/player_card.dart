import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/configs/app_strings.dart';

class PlayerCard extends StatelessWidget {
  final String title;
  final String icon;
  final Color? color;
  final String side;
  const PlayerCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.side,
      this.color});

  @override
  Widget build(BuildContext context) {
    return side == leftSide
        ? Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: color ?? Colors.white,
            ),
            width: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.indieFlower(
                      wordSpacing: 1,
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  icon,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.indieFlower(
                      wordSpacing: 1,
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          )
        : Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: color ?? Colors.indigo[900],
            ),
            width: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.indieFlower(
                      wordSpacing: 1,
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  icon,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.indieFlower(
                      wordSpacing: 1,
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          );
  }
}
