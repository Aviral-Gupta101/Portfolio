import 'package:flutter/material.dart';
import 'package:portfoilio/components/about_me_section.dart';
import 'package:portfoilio/components/coding_section.dart';
import 'package:portfoilio/components/contact_me_section.dart';
import 'package:portfoilio/components/header.dart';
import 'package:portfoilio/components/home.dart';
import 'package:portfoilio/components/project_section.dart';

class HomePage extends StatefulWidget {
  final BoxConstraints constraints;

  const HomePage(this.constraints, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scroll(double height) {
    _scrollController.animateTo(
      height,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  double aboutMeSectionHeight = 0;
  double codingSectionHeight = 0;
  double projectSectionHeight = 0;

  void setAboutMeHeight(double height) {
    setState(() {
      aboutMeSectionHeight = height;
    });
  }

  void setCodingSectionHeight(double height) {
    setState(() {
      codingSectionHeight = height;
    });
  }

  void setProjectSectionHeight(double height) {
    setState(() {
      projectSectionHeight = height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Header(widget.constraints.maxWidth, scroll,
            [aboutMeSectionHeight, codingSectionHeight, projectSectionHeight]),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          const Home(),
          AboutMeSection(setAboutMeHeight),
          CodingSection(setCodingSectionHeight),
          ProjectSection(setProjectSectionHeight),
          const ContactMeSection(),
        ],
      ),
    );
  }
}
