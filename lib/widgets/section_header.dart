import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String heading;
  final String subHeading;
  final double colorWidth;
  const SectionHeader(this.heading, this.subHeading, this.colorWidth,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          style: GoogleFonts.roboto()
              .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          subHeading,
          style: GoogleFonts.robotoCondensed().copyWith(
            // fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 5,
          width: colorWidth,
          color: Colors.blue,
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
