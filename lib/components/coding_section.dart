import 'package:flutter/material.dart';
import 'package:portfoilio/widgets/coding_profile_card.dart';
import 'package:portfoilio/widgets/section_header.dart';

class CodingSection extends StatelessWidget {
  const CodingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SectionHeader("Coding Profiles", "Where I Stand", 40),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: [
                CodingProfileCard(
                  image: "assets/leetcode.png",
                  heading:
                      "LeetCode\nI have solved more than\n350 problems on\nleetcode\n\n",
                  url: "https://leetcode.com/aviralg2002/",
                ),
                CodingProfileCard(
                  image: "assets/gfg.png",
                  heading:
                      "LeetCode\nI have solved more than\n350 problems on\nleetcode\n\n",
                  url: "https://leetcode.com/aviralg2002/",
                ),
                CodingProfileCard(
                  image: "assets/codechef.png",
                  heading:
                      "LeetCode\nI have solved more than\n350 problems on\nleetcode\n\n",
                  url: "https://leetcode.com/aviralg2002/",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
