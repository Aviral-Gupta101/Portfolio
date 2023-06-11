import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CodingProfileCard extends StatelessWidget {
  final String image;
  final String heading;
  final String url;
  const CodingProfileCard({
    required this.image,
    required this.heading,
    required this.url,
    super.key,
  });

  void _launchURL() async {
    // Replace with your desired URL
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        hoverColor: Colors.deepPurple,
        onTap: () {
          _launchURL();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                heading,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Know More",
                style: TextStyle(fontSize: 16.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
