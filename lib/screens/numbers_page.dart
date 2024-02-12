import 'package:flutter/material.dart';
import 'package:toku_project/components/ItemCategory.dart';
import 'package:toku_project/modules/Item.dart';

// ignore: must_be_immutable
class NumberPage extends StatelessWidget {
  Map<String, String> itemNames = {
    'One': 'Ichi',
    'Two': 'Ni',
    'Three': 'San',
    'Four': 'Shi',
    'Five': 'Go',
    'Six': 'Roki',
    'Seven': 'Sebun',
    'Eight': 'Hachi',
    'Nine': 'Kyu',
    'Ten': 'Ju',
  };
  late List<Item> numberList = [];
  NumberPage({super.key}) {
    itemNames.forEach((englishName, tokuName) {
      numberList.add(Item(
          englishName: englishName,
          tokuName: tokuName,
          audioPath:
              'sounds/numbers/number_${englishName.toLowerCase()}_sound.mp3',
          imageBackground: Colors.orange,
          itemBackground: Colors.green,
          itemPhoto: AssetImage(
              'assets/images/numbers/number_${englishName.toLowerCase()}.png')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), // here the desired height
          child: AppBar(
            title: const Text("Numbers"),
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemCategory(itemInfo: numberList[index]);
          },
          itemCount: numberList.length,
        ));
  }
}
