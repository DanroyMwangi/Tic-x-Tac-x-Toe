import 'package:flutter/material.dart';

class PlayerModel {
  final String playerName;
  List<Key>? _moves;
  final String? characterIcon;

  PlayerModel({this.playerName = 'player', this.characterIcon});

  set moves(moves) => _moves = moves;
  get moves => _moves;
}
