import 'package:flutter/material.dart';
import 'package:portfoilio/widgets/project_card.dart';
import 'package:portfoilio/widgets/section_header.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 150),
        child: Column(
          children: [
            SectionHeader("Projects", "My Recent Projects", 80),
            Wrap(
              spacing: 10,
              children: [
                ProjectCard(
                  image: "assets/portfolio.png",
                  heading: "Portfolio Website",
                  des:
                      "Experience my skills and projects come alive with my portfolio website built using Flutter, showcasing my talent and accomplishments.",
                  sourceCodeUrl: "https://github.com/Aviral-Gupta101/Portfolio",
                ),
                ProjectCard(
                  image: "assets/instagram3.png",
                  heading: "Instagram Clone",
                  des:
                      "In this project I have created Instagram Clone using flutter and firebase. In this user can login, logout, upload images as post see others post etc... ",
                  liveDemoUrl: "https://instagram-clone-34dbe.web.app/#/",
                  sourceCodeUrl:
                      "https://github.com/Aviral-Gupta101/instagram-clone-flutter",
                ),
                ProjectCard(
                  image: "assets/chat_app.png",
                  heading: "Flutter-Nodejs Chat APP",
                  des:
                      "Experience seamless real-time communication with my Flutter-Node.js chat app. Join rooms and engage in lively conversations with people with other people.",
                  sourceCodeUrl:
                      "https://github.com/Aviral-Gupta101/Flutter-NodeJs-chat-app",
                ),
                ProjectCard(
                  image: "assets/erms.jpeg",
                  // heading: "Employee Recruitment\nManagement System",
                  heading: "ERMS",
                  des:
                      "Simplify recruitment with my Node.js system. Login, upload resumes, schedule interviews, and track application status seamlessly.",
                  sourceCodeUrl:
                      "https://github.com/Aviral-Gupta101/Employee-Recruiter-Management",
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 200),
              child: Divider(
                thickness: 0.75,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
