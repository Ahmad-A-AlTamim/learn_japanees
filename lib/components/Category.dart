// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  late String btuName;
  late Color backgroundColor;
  late Function() onTap;
  Category(
      {super.key,
      required this.btuName,
      required this.backgroundColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            backgroundColor: backgroundColor,
            foregroundColor: Colors.white,
            fixedSize: Size(MediaQuery.of(context).size.width, 60),
            alignment: Alignment.centerLeft),
        onPressed: onTap,
        child: Text(
          btuName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
