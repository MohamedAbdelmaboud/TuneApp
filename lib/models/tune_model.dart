import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final String soundPath;
  final Color color;

  TuneModel({required this.soundPath, required this.color});
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(soundPath));
  }
}
