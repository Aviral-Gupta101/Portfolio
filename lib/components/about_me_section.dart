import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/global/about_me_content.dart';
import 'package:portfoilio/global/my_skills.dart';
import 'package:portfoilio/utils/util.dart';
import 'package:portfoilio/widgets/section_header.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({super.key});

  @override
  State<AboutMeSection> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMeSection> {
  bool animateAboutMe = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            VisibilityDetector(
              key: const ValueKey("about-me-who-am-i-key"),
              onVisibilityChanged: (visibilityInfo) {
                if (visibilityInfo.visibleFraction >= 0.5) {
                  setState(() {
                    animateAboutMe = true;
                  });
                }
              },
              child: FadeIn(
                animate: animateAboutMe,
                duration: const Duration(seconds: 1, milliseconds: 500),
                child: const Column(
                  children: [
                    SectionHeader("About Me", "Who am i", 40),
                  ],
                ),
              ),
            ),
            size.width >= aboutSectionWidthBreakPoint
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
      ),
    );
  }
}
