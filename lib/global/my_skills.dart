import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  bool animateMySkills = false;

  List<Widget> mySkillsTiles = const [
    ListTile(
      leading: SvgIcon("assets/flutter.svg"),
      title: Text("Flutter"),
    ),
    ListTile(
      leading: SvgIcon("assets/nodejs.svg"),
      title: Text("NodeJS"),
    ),
    ListTile(
      leading: SvgIcon("assets/firebase.svg"),
      title: Text("Firebase"),
    ),
    ListTile(
      leading: SvgIcon("assets/mysql.svg"),
      title: Text("MySql"),
    ),
    ListTile(
      leading: SvgIcon("assets/c++.svg"),
      title: Text("C++"),
    ),
  ];

  List<Widget> animatedListTiles(List<Widget> listTiles) {
    int time = 3;
    List<Widget> newList = [];
    for (int i = 0; i < listTiles.length; i++) {
      Widget temp = BounceInRight(
        key: ValueKey("ListTile-$i"),
        delay: Duration(seconds: time - 1 + i),
        child: listTiles[i],
      );
      newList.add(temp);
    }

    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VisibilityDetector(
          key: const ValueKey("My-skills"),
          onVisibilityChanged: (visibilityInfo) async {
            if (visibilityInfo.visibleFraction >= 0.5) {
              await Future.delayed(const Duration(seconds: 2));
              setState(() {
                animateMySkills = true;
              });
            }
          },
          child: Pulse(
            animate: animateMySkills,
            child: Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Text(
                "My Skills",
                style: GoogleFonts.roboto()
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 200),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: animateMySkills
                      ? animatedListTiles(mySkillsTiles)
                      : [...mySkillsTiles],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
