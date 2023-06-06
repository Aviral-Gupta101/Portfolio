import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Text(
                      "I'm a Fullstack Developer.",
                      style: GoogleFonts.roboto()
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Text(
                      "My name is Aviral Gupta. I'm a dedicated and enthusiastic 3rd-year B.Tech student in Computer Science Engineering at Noida Institute of Engineering and Technology. I am committed to academic success and continuous learning.With strong programming and problem-solving skills, I am poised to make a positive impact in the technology field.",
                      style: GoogleFonts.roboto().copyWith(fontSize: 16),
                      maxLines: 40,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Text(
                      "I'm a Fullstack Developer.",
                      style: GoogleFonts.roboto()
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Text(
                      "My name is Aviral Gupta. I'm a dedicated and enthusiastic 3rd-year B.Tech student in Computer Science Engineering at Noida Institute of Engineering and Technology. I am committed to academic success and continuous learning.With strong programming and problem-solving skills, I am poised to make a positive impact in the technology field.",
                      style: GoogleFonts.roboto().copyWith(fontSize: 16),
                      maxLines: 40,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
