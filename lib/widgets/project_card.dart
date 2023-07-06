import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoilio/utils/util.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String image;
  final String heading;
  final String des;
  final String? liveDemoUrl;
  final String sourceCodeUrl;
  const ProjectCard({
    required this.image,
    required this.heading,
    required this.des,
    required this.sourceCodeUrl,
    this.liveDemoUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    void launchURL(String url) async {
      // Replace with your desired URL
      var uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 150,
              width: width >= 230 ? 230 : null,
              // width: null,
              // alignment: Alignment.topCenter,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              heading,
              style: GoogleFonts.roboto().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 250,
              child: Text(
                des,
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                softWrap: true,
                maxLines: 100,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              splashColor: Colors.blue,
              hoverColor: Colors.deepPurple,
              onTap: () => launchURL(sourceCodeUrl),
              child: Text(
                "Source Code",
                style: TextStyle(
                  fontSize: 16.5,
                  color: colorScheme.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                liveDemoUrl != null
                    ? InkWell(
                        splashColor: Colors.blue,
                        hoverColor: Colors.deepPurple,
                        onTap: () => launchURL(liveDemoUrl!),
                        child: Text(
                          "Live Demo",
                          style: TextStyle(
                            fontSize: 16.5,
                            color: colorScheme.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    : const SizedBox(height: 25),
                const SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
