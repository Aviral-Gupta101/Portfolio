import 'package:flutter/material.dart';
import 'package:portfoilio/widgets/coding_profile_card.dart';
import 'package:portfoilio/widgets/section_header.dart';

class CodingSection extends StatelessWidget {
  const CodingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 150),
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
                      "LeetCode\nI have solved more than\n90 problems on\nleetcode\n\n",
                  url: "https://leetcode.com/aviralg2002/",
                ),
                CodingProfileCard(
                  image: "assets/gfg.png",
                  heading:
                      "GeeksForGeeks\nI have solved more than\n400 problems on\nGeeksForGeeks\n\n",
                  url:
                      "https://auth.geeksforgeeks.org/user/aviralg2002/?utm_source=geeksforgeeks&utm_medium=my_profile&utm_campaign=auth_user",
                ),
                CodingProfileCard(
                  image: "assets/codechef.png",
                  heading:
                      "Codechef\nI have reached 3 ⭐️\non Codechef\n(max rating 1633*)\n\n",
                  url: "https://www.codechef.com/users/aviral_001",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
