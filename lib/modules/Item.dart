// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Item {
  late String englishName;
  late String tokuName;
  late String audioPath;
  ImageProvider? itemPhoto;
  late Color imageBackground;
  late Color itemBackground;

  Item(
      {required this.englishName,
      required this.tokuName,
      this.itemPhoto,
      required this.imageBackground,
      required this.itemBackground,
      required this.audioPath});
}
