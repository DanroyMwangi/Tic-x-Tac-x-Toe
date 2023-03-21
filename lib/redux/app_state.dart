import 'package:tic_tac_toe/redux/board_state.dart';
import 'package:tic_tac_toe/redux/game_state.dart';

class AppState {
  late BoardState boardState;
  late GameState gameState;

  AppState({required this.boardState, required this.gameState});

  factory AppState.initialState() => AppState(
      gameState: GameState.initialState(),
      boardState: BoardState.initialState());

  AppState.copyWith(AppState newState) {
    boardState = newState.boardState;
    gameState = newState.gameState;
  }
}
