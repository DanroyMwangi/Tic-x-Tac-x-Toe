import 'package:tic_tac_toe/configs/asset_paths.dart';
import 'package:tic_tac_toe/models/player_model.dart';
import 'package:tic_tac_toe/redux/cell_state.dart';

class GameState {
  late PlayerModel? player1;
  late PlayerModel? player2;
  late CellState? cellState;
  late PlayerModel? currentPlayer;

  GameState({this.player1, this.player2, this.cellState, this.currentPlayer});

  factory GameState.initialState() => GameState(
      player1: PlayerModel(playerName: 'Dan', characterIcon: oIcon),
      player2: PlayerModel(playerName: 'Roy', characterIcon: xIcon),
      currentPlayer: PlayerModel(playerName: 'Dan', characterIcon: oIcon),
      cellState: CellState.initialState());

  GameState.copyWith(GameState currentState) {
    player1 = currentState.player1;
    player2 = currentState.player2;
    cellState = currentState.cellState;
  }
}
