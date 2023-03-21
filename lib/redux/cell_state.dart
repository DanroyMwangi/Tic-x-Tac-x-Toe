import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/app_keys.dart';

class CellState {
  Map<Key, Map<String, dynamic>>? cells;
  CellState({this.cells});

  factory CellState.initialState() => CellState(cells: {
        cellOne: {'visible': false, 'player': null, 'characterIcon': null},
        cellTwo: {'visible': false, 'player': null, 'characterIcon': null},
        cellThree: {'visible': false, 'player': null, 'characterIcon': null},
        cellFour: {'visible': false, 'player': null, 'characterIcon': null},
        cellFive: {'visible': false, 'player': null, 'characterIcon': null},
        cellSix: {'visible': false, 'player': null, 'characterIcon': null},
        cellSeven: {'visible': false, 'player': null, 'characterIcon': null},
        cellEight: {'visible': false, 'player': null, 'characterIcon': null},
        cellNine: {'visible': false, 'player': null, 'characterIcon': null}
      });
  CellState.copyWith(CellState currentState) {
    cells = currentState.cells;
  }
}
