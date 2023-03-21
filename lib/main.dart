import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/app_strings.dart';
import 'package:tic_tac_toe/redux/app_state.dart';
import 'package:tic_tac_toe/routes/route_generator.dart';

void main() {
  AppState state = AppState.initialState();

  Store<AppState> store = Store<AppState>(initialState: state);
  runApp(StoreProvider<AppState>(
    store: store,
    child: MaterialApp(
      onGenerateRoute: RouteGenerator().generateRoute,
      initialRoute: homePage,
      title: 'Tic x Toe',
    ),
  ));
}
