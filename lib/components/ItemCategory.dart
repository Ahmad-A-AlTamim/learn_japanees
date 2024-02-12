// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku_project/modules/Item.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: must_be_immutable
class ItemCategory extends StatelessWidget {
  late Item itemInfo;
  static AudioPlayer player = AudioPlayer();

  // ignore: use_key_in_widget_constructors
  ItemCategory({required this.itemInfo});
  Future<void> playAudio() async {
    await player.stop();
    await player.play(AssetSource(itemInfo.audioPath), volume: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: itemInfo.itemBackground,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            color: itemInfo.imageBackground,
            child: itemInfo.itemPhoto == null
                ? null
                : Image(
                    image: itemInfo.itemPhoto!,
                    height: 80,
                    width: 80,
                  ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemInfo.englishName,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              Text(
                itemInfo.tokuName,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: playAudio,
              icon: Icon(
                Icons.play_arrow,
                size: 30,
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
