import 'package:flutter/material.dart';
import 'package:tic_tac_toe/configs/app_strings.dart';
import 'package:tic_tac_toe/pages/home_page.dart';

class RouteGenerator {
  Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case gamePage:
        return MaterialPageRoute(builder: (_) => MaterialApp());
      default:
        return MaterialPageRoute(
            builder: (_) => MaterialApp(
                    home: Scaffold(
                        body: SafeArea(
                            child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text('jheha'),
                    ],
                  ),
                )))));
    }
  }
}
