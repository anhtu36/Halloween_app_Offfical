// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:official_halloween/screens/homepage.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({super.key});

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  List<String> categories = ["Ghost", "Pumpkin", "Bat", "Customize"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 320, top: 60),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/back.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            ListView.builder(
              // scrollDirection: Axis.vertical,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildList(index),
            ),
          ],
        ),
      ]),
    );
  }

  Widget buildList(int index) {
    return Text(categories[index]);
  }
}
