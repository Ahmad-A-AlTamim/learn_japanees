// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_project/components/ItemCategory.dart';
import 'package:toku_project/modules/Item.dart';

class MemberPage extends StatelessWidget {
  Map<String, String> itemNames = {
    'Father': 'Chichioya',
    'Mother': 'Hahaoya',
    'Grand father': 'Ojīsan',
    'Grand mother': 'Sobo',
    'Daughter': 'Musume',
    'Son': 'Musuko',
    'Older brother': 'Nīsan',
    'Older sister': 'Ane',
    'Younger brother': 'Otōto',
    'Younger sister': 'Imōto',
  };
  late List<Item> familyList = [];

  MemberPage({super.key}) {
    itemNames.forEach((englishName, tokuName) {
      familyList.add(Item(
          englishName: englishName,
          tokuName: tokuName,
          audioPath:
              'sounds/family_members/${englishName.toLowerCase().replaceAll(RegExp(' '), '_')}.wav',
          imageBackground: const Color.fromARGB(255, 255, 162, 0),
          itemBackground: const Color.fromARGB(255, 120, 165, 201),
          itemPhoto: AssetImage(
              'assets/images/family_members/family_${englishName.toLowerCase().replaceAll(RegExp(' '), '_')}.png')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), // here the desired height
          child: AppBar(
            title: const Text("Members"),
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemCategory(itemInfo: familyList[index]);
          },
          itemCount: familyList.length,
        ));
  }
}
