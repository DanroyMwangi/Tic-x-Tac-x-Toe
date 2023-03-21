import 'package:tic_tac_toe/configs/asset_paths.dart';
import 'package:tic_tac_toe/redux/cell_state.dart';

class BoardState {
  String background;
  String xIconCurrent;
  String oIconCurrent;
  CellState cellState;

  BoardState({required this.background,required this.xIconCurrent, required this.oIconCurrent, required this.cellState});

  factory BoardState.initialState()=> BoardState(background: boardIcon, xIconCurrent: xIcon, oIconCurrent: oIcon, cellState: CellState.initialState());
}
