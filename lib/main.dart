import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/app_strings.dart';
import 'package:tic_tac_toe/routes/route_generator.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator().generateRoute,
    initialRoute: homePage,
    title: 'Tic x Toe',
  ));
}
