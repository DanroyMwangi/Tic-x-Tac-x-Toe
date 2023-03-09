import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const GenericButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            minimumSize: MaterialStateProperty.all(Size(300, 30)),
            shadowColor: MaterialStateProperty.all(Colors.indigo[900]),
            elevation: MaterialStateProperty.all(5),
            padding: MaterialStateProperty.all(EdgeInsets.all(2))),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.indieFlower(
              fontSize: 30,
              color: Colors.blue[900],
              fontWeight: FontWeight.w800),
        ));
  }
}
