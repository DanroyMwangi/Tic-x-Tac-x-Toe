import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/player_model.dart';
import 'package:tic_tac_toe/redux/app_state.dart';
import 'package:tic_tac_toe/redux/cell_state.dart';
import 'package:tic_tac_toe/redux/game_state.dart';

class PlayerMoveAction extends ReduxAction<AppState> {
  Key? cellKey;
  PlayerMoveAction({required this.cellKey});

  @override
  AppState reduce() {
    /// Store the current cells in the variable [oldCells]
    Map<Key, Map<String, dynamic>>? oldCells = state.gameState.cellState!.cells;

    // Check visibility of cell
    if (!oldCells![cellKey]!['visible']) {
      // Variable storing the new modified values of the cells
      var newCells = oldCells;

      // Change the visibility of the cell to visible
      newCells[cellKey]!['visible'] = true;

      // Adding the Player moves to the array of moves
      List<Key?>? playerMoves = [];
      playerMoves.add(cellKey);

      // New var to update the current player's moves
      PlayerModel currentPlayer = state.gameState.currentPlayer!;
      currentPlayer.moves = playerMoves;

      // Update the charcterIcon for the cell [X, O]
      newCells[cellKey]!['characterIcon'] =
          state.gameState.currentPlayer!.characterIcon;

      // Change the cell Player to the Player who has tapped the cell
      newCells[cellKey]!['player'] = currentPlayer;

      // Compare the current player stored in the state and player 1. If equal the the new state will have player 2 as the current player
      if (state.gameState.currentPlayer!.playerName ==
          state.gameState.player1!.playerName) {
        AppState newState = AppState(
            boardState: state.boardState,
            gameState: GameState(
                cellState: CellState(cells: newCells),
                player1: currentPlayer,
                player2: state.gameState.player2,
                currentPlayer: state.gameState.player2));
        return newState;
      }

      // If the current player name is not equal to player 1, then it is equal to player 2
      else {
        AppState newState = AppState(
            boardState: state.boardState,
            gameState: GameState(
                cellState: CellState(cells: newCells),
                player1: state.gameState.player1,
                player2: currentPlayer,
                currentPlayer: state.gameState.player1));
        return newState;
      }
    } else {
      return state;
    }
  }
}
