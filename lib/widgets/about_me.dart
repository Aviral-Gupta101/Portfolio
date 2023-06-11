import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoilio/global/about_me_content.dart';
import 'package:portfoilio/global/my_skills.dart';
import 'package:portfoilio/utils/util.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool animateAboutMe = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          VisibilityDetector(
            key: const ValueKey("about-me-who-am-i-key"),
            onVisibilityChanged: (visibilityInfo) {
              // print("Visibility: ${visibilityInfo.visibleFraction}");
              if (visibilityInfo.visibleFraction >= 0.5) {
                setState(() {
                  animateAboutMe = true;
                });
              }
            },
            child: FadeIn(
              animate: animateAboutMe,
              duration: const Duration(seconds: 1, milliseconds: 500),
              child: Column(
                children: [
                  Text(
                    "About me",
                    style: GoogleFonts.roboto()
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    "Who am i",
                    style: GoogleFonts.robotoCondensed().copyWith(
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 5,
                    width: 40,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          size.width >= maxScreenWidth
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [AboutMeContent()],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MySkills(),
                      ],
                    )
                  ],
                )
              : const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AboutMeContent(),
                    SizedBox(
                      height: 30,
                    ),
                    MySkills(),
                  ],
                ),
        ],
      ),
    );
  }
}
