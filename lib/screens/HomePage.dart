// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toku_project/components/Category.dart';
import 'package:toku_project/screens/colors_page.dart';
import 'package:toku_project/screens/members_page.dart';
import 'package:toku_project/screens/numbers_page.dart';
import 'package:toku_project/screens/phases_page.dart';

//
// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  BuildContext context;
  HomePage({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), // here the desired height
          child: AppBar(
            title: const Text("Toku"),
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            Category(
              btuName: "Numbers",
              backgroundColor: Colors.orange,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return NumberPage();
                }));
              },
            ),
            Category(
              btuName: "Family Members",
              backgroundColor: Colors.green,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MemberPage();
                }));
              },
            ),
            Category(
              btuName: "Colors",
              backgroundColor: Colors.purple,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ColorsPage();
                }));
              },
            ),
            Category(
              btuName: "Phases",
              backgroundColor: Colors.blueAccent,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return PhasesPage();
                }));
              },
            ),
          ],
        ));
  }
}
