// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:toku_project/components/ItemCategory.dart';
import 'package:toku_project/modules/Item.dart';

// ignore: must_be_immutable
class PhasesPage extends StatelessWidget {
  Map<String, String> itemNames = {
    'Are you coming': 'Kimasu ka',
    'How are you feeling': 'Go kibun wa ikagadesu ka',
    'I love anime': 'Watashi wa anime ga daisukidesu',
    'I love programming': 'Watashi wa puroguramingu ga daisuki',
    'Programming is easy': 'Puroguramingu wa kantandesu',
    'What is your name': 'namae wa nandesuka',
    'Where are you going': 'Doko ni iku no',
    'Yes im coming': 'Hai,Watashi wa kimasu',
  };
  late List<Item> phasesList = [];

  PhasesPage({super.key}) {
    itemNames.forEach((englishName, tokuName) {
      phasesList.add(Item(
        englishName: englishName,
        tokuName: tokuName,
        audioPath:
            'sounds/phrases/${englishName.toLowerCase().replaceAll(RegExp(" "), "_")}.wav',
        imageBackground: const Color.fromARGB(255, 225, 0, 255),
        itemBackground: const Color.fromARGB(255, 31, 148, 244),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0), // here the desired height
        child: AppBar(
          title: const Text("Phases"),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemCategory(itemInfo: phasesList[index]);
        },
        itemCount: phasesList.length,
      ),
    );
  }
}
