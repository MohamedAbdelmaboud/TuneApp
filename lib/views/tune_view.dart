import 'package:flutter/material.dart';
import 'package:tune/constants/assets.dart';
import 'package:tune/models/tune_model.dart';
import 'package:tune/widgets/tune_item.dart';

class Tune extends StatelessWidget {
  Tune({super.key});
  final List<TuneModel> tuneModels = [
    TuneModel(soundPath: Assets.Note1, color: Colors.red),
    TuneModel(soundPath: Assets.Note2, color: Colors.orange),
    TuneModel(soundPath: Assets.Note3, color: Colors.yellow),
    TuneModel(soundPath: Assets.Note4, color: Colors.green),
    TuneModel(soundPath: Assets.Note5, color: Colors.teal),
    TuneModel(soundPath: Assets.Note6, color: Colors.blue),
    TuneModel(soundPath: Assets.Note7, color: Colors.purple),
  ];
  @override
  Widget build(BuildContext context) {
    List<TuneItem> tuneItems = List.generate(
        tuneModels.length, (index) => TuneItem(model: tuneModels[index]));
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff253238),
          title: const Text('Flutter Tune'),
          centerTitle: true,
        ),
        body: Column(
          children: tuneItems,
        ));
  }
}
