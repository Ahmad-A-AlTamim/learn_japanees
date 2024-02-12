// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_project/components/ItemCategory.dart';
import 'package:toku_project/modules/Item.dart';

class ColorsPage extends StatelessWidget {
  Map<String, String> itemNames = {
    'Black': 'Burakku',
    'Brown': 'Chairo',
    'Dusty': 'Hokori ppoi kiiro',
    'Gray': 'Gurē',
    'Green': 'Midori',
    'Red': 'Aka',
    'White': 'Shiroi',
    'Yellow': 'Kiiro',
  };
  late List<Item> colorList = [];

  ColorsPage({super.key}) {
    itemNames.forEach((englishName, tokuName) {
      colorList.add(Item(
          englishName: englishName,
          tokuName: tokuName,
          audioPath: 'sounds/colors/${englishName.toLowerCase()}.wav',
          imageBackground: const Color.fromARGB(255, 225, 0, 255),
          itemBackground: const Color.fromARGB(255, 31, 148, 244),
          itemPhoto: AssetImage(
              'assets/images/colors/color_${englishName.toLowerCase()}.png')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), // here the desired height
          child: AppBar(
            title: const Text("Colors"),
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemCategory(itemInfo: colorList[index]);
          },
          itemCount: colorList.length,
        ));
  }
}
