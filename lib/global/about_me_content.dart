import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMeContent extends StatefulWidget {
  const AboutMeContent({super.key});

  @override
  State<AboutMeContent> createState() => _AboutMeContentState();
}

class _AboutMeContentState extends State<AboutMeContent> {
  bool animatefullStackDev = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VisibilityDetector(
            key: const ValueKey("I'm-a-Fullstack-Developer."),
            onVisibilityChanged: (visibilityInfo) async {
              if (visibilityInfo.visibleFraction >= 0.5) {
                await Future.delayed(const Duration(seconds: 1));
                if (mounted) {
                  setState(() {
                    animatefullStackDev = true;
                  });
                }
              }
            },
            child: Pulse(
              animate: animatefullStackDev,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Text(
                  "I'm a Fullstack Developer.",
                  style: GoogleFonts.roboto()
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Text(
              "My name is Aviral Gupta. I'm a dedicated and enthusiastic 4th year B.Tech student in Computer Science Engineering at Noida Institute of Engineering and Technology. I am committed to academic success and continuous learning.With strong programming and problem-solving skills, I am poised to make a positive impact in the technology field.",
              style: GoogleFonts.roboto().copyWith(fontSize: 16),
              maxLines: 40,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
