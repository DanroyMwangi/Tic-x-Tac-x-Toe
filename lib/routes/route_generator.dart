import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/app_strings.dart';
import 'package:tic_tac_toe/pages/error_page.dart';
import 'package:tic_tac_toe/pages/game_page.dart';
import 'package:tic_tac_toe/pages/home_page.dart';

class RouteGenerator {
  Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case gamePage:
        return MaterialPageRoute(builder: (_) => const GamePage());
      default:
        return MaterialPageRoute(builder: (_)=> const ErrorPage());
    }
  }
}
