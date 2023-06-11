import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoilio/utils/util.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  bool animateMySkills = false;
  bool animateSkillCard = false;

  List<Widget> animatedListTiles(List<Widget> listTiles) {
    int time = 3;
    List<Widget> newList = [];
    for (int i = 0; i < listTiles.length; i++) {
      Widget temp = Flash(
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
        Column(
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
          ],
        ),
        Wrap(
          children: [
            VisibilityDetector(
              key: const ValueKey("ListTiles-animation"),
              onVisibilityChanged: (visibilityInfo) async {
                if (visibilityInfo.visibleFraction >= 0.5) {
                  await Future.delayed(const Duration(seconds: 3));
                  setState(() {
                    animateSkillCard = true;
                  });
                }
              },
              child: Flash(
                animate: animateSkillCard,
                child: Wrap(
                  children: [
                    Card(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: mySkillsTilesLeft,
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: mySkillsTilesRight,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Right child
          ],
        )
      ],
    );
  }
}
