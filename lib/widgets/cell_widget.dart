import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/asset_paths.dart';
import 'package:tic_tac_toe/redux/app_state.dart';
import 'package:tic_tac_toe/redux/redux_actions/player_move_action.dart';

class CellWidget extends StatefulWidget {
  const CellWidget({super.key});

  @override
  State<CellWidget> createState() => _CellWidgetState();
}

class _CellWidgetState extends State<CellWidget> {
  @override
  Widget build(BuildContext context) {
    Key? cellKey = widget.key;
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (BuildContext context, appState) => GestureDetector(
        onTap: () {
          StoreProvider.dispatch<AppState>(
              context, PlayerMoveAction(cellKey: cellKey));
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.transparent,
          child:
              appState.gameState.cellState!.cells![cellKey]!['visible'] == true
                  ? Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(appState.gameState.cellState!
                                      .cells![cellKey]!['characterIcon'] ??
                                  xIcon),
                              fit: BoxFit.scaleDown)),
                    )
                  : const SizedBox(),
        ),
      ),
    );
  }
}
