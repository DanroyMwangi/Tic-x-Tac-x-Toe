import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/configs/app_strings.dart';
import 'package:tic_tac_toe/configs/asset_paths.dart';
import 'package:tic_tac_toe/redux/app_state.dart';
import 'package:tic_tac_toe/widgets/board_widget.dart';

import '../widgets/player_card.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return StoreConnector<AppState, AppState>(
      converter: ((store) => store.state),
      builder: (BuildContext context, appState) => Scaffold(
          backgroundColor: Colors.blue[900],
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: screenHeight / 3.5,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              CircleAvatar(
                                  backgroundColor: Colors.indigo[900],
                                  minRadius: 30,
                                  child: Text(
                                    pauseText,
                                    style: GoogleFonts.indieFlower(
                                        fontSize: 50,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 4),
                                  ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              PlayerCard(
                                  title: appState.gameState.player1!.playerName,
                                  icon: playerO,
                                  side: leftSide,
                                  color:
                                      appState.gameState.player1!.playerName ==
                                              appState.gameState.currentPlayer!
                                                  .playerName
                                          ? Colors.green[600]
                                          : null),
                              PlayerCard(
                                title: appState.gameState.player2!.playerName,
                                icon: playerX,
                                side: rightSide,
                                color: appState.gameState.player2!.playerName ==
                                        appState
                                            .gameState.currentPlayer!.playerName
                                    ? Colors.green[600]
                                    : null,
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
                const BoardWidget()
              ],
            ),
          )),
    );
  }
}
