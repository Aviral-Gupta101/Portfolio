import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  final String linkedInUrl =
      "https://www.linkedin.com/in/aviral-gupta-5a4284254/";

  void _launchURL(String url) async {
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.spaceAround,
                children: [
                  Text(
                    "Interested in working\ntogether? Let's talk",
                    style: GoogleFonts.robotoCondensed().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _launchURL(linkedInUrl);
                      },
                      child: const Text(
                        "Get in touch",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.black54,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    "© Designed and Coded by Aviral Gupta in Flutter",
                    style: GoogleFonts.roboto().copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    maxLines: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
