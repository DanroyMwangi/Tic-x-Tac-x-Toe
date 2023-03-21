import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/app_keys.dart';
import 'package:tic_tac_toe/configs/asset_paths.dart';
import 'package:tic_tac_toe/widgets/cell_widget.dart';

class BoardWidget extends StatefulWidget {
  const BoardWidget({super.key});

  @override
  State<BoardWidget> createState() => _BoardWidgetState();
}

class _BoardWidgetState extends State<BoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 30),
          child: Image.asset(boardIcon),
        ),
        Positioned(
          top: 55,
          left: -10,
          right: 35,
          child: Transform.rotate(
            angle: -.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CellWidget(key: cellOne),
                CellWidget(key: cellTwo),
                CellWidget(key: cellThree)
              ],
            ),
          ),
        ),
        Positioned(
          top: 165,
          left: 0,
          right: 20,
          child: Transform.rotate(
            angle: -.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CellWidget(key: cellFour),
                CellWidget(
                  key: cellFive,
                ),
                CellWidget(key: cellSix)
              ],
            ),
          ),
        ),
        Positioned(
          top: 280,
          left: 0,
          right: 5,
          child: Transform.rotate(
            angle: -.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CellWidget(key: cellSeven),
                CellWidget(key: cellEight),
                CellWidget(key: cellNine)
              ],
            ),
          ),
        )
      ],
    );
  }
}
