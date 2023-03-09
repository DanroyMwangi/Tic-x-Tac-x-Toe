import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/widgets/generic_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: screenHeight / 2,
            child: Center(
                child: Text(
              'XO',
              style: GoogleFonts.indieFlower(
                  fontSize: 300,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            )),
          ),
          Container(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GenericButton(text: 'Start',onPressed: (){},),
                  GenericButton(text: 'Multiplayer',onPressed:(){}),
                  GenericButton(text: 'High Score',onPressed:(){}),
                  GenericButton(text: 'Exit',onPressed: () {
                    exit(0);
                  },),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
