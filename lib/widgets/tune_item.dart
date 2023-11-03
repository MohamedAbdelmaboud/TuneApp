import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.model});
  final TuneModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () => model.playSound(),
      child: Container(
        color: model.color,
      ),
    ));
  }
}
