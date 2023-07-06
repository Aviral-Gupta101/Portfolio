import 'package:flutter/material.dart';
import 'package:portfoilio/utils/util.dart';

class Header extends StatefulWidget {
  final double width;
  final Function(double) scroll;
  final List<double> list;
  const Header(this.width, this.scroll, this.list, {super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int dropDownValue = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double homeSectionheight = 0;
    double aboutSectionHeight = homeSectionheight + height - 20;
    double profileSectionHeight = widget.list[0] + aboutSectionHeight;
    double projectSectionHeight = widget.list[1] + profileSectionHeight;
    double contactSectionHeight = projectSectionHeight + 190;

    return SizedBox(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                "Aviral ",
                style: navbarTextStyle(
                  primaryColor,
                  FontWeight.bold,
                  20,
                ),
              ),
              Text(
                "</>",
                style: navbarTextStyle(
                  colorScheme.secondary,
                  FontWeight.bold,
                  20,
                ),
              ),
            ],
          ),
          widget.width > maxScreenWidth
              ? Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        widget.scroll(homeSectionheight);
                      },
                      child: Text(
                        "Home",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        widget.scroll(aboutSectionHeight);
                      },
                      child: Text(
                        "About",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        widget.scroll(profileSectionHeight);
                      },
                      child: Text(
                        "Profile",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        widget.scroll(projectSectionHeight);
                      },
                      child: Text(
                        "Projects",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        widget.scroll(contactSectionHeight);
                      },
                      child: Text(
                        "Contact",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                  ],
                )
              : DropdownButton(
                  focusColor: colorScheme.background,
                  value: dropDownValue,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 1,
                      child: Text(
                        "Home",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text(
                        "About",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text(
                        "Profile",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 4,
                      child: Text(
                        "Projects",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 5,
                      child: Text(
                        "Contact",
                        style: navbarTextStyle(
                          Colors.white,
                          FontWeight.normal,
                          17,
                        ),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropDownValue = value!;
                    });

                    double height = 0;
                    if (value == 2) {
                      height = aboutSectionHeight;
                    } else if (value == 3) {
                      height = projectSectionHeight;
                    } else if (value == 4) {
                      height = projectSectionHeight;
                    } else if (value == 5) {
                      height = contactSectionHeight;
                    }
                    widget.scroll(height);
                  },
                ),
        ],
      ),
    );
  }
}
