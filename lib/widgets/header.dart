import 'package:flutter/material.dart';
import 'package:portfoilio/utils/util.dart';

class Header extends StatelessWidget {
  final double width;
  const Header(this.width, {super.key});

  @override
  Widget build(BuildContext context) {
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
          // Spacer(),
          width > 600
              ? Row(
                  children: [
                    TextButton(
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                  value: 1,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text(
                        "About",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 4,
                      child: Text(
                        "Projects",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 5,
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                  },
                ),
        ],
      ),
    );
  }
}
