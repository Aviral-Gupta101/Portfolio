import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/utils/util.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height - 10,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 150,
                runSpacing: 100,
                children: [
                  SlideInLeft(
                    delay: const Duration(seconds: 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: size.width >= maxScreenWidth
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I am",
                          style: titleTextStyle(
                            colorScheme.onBackground,
                            FontWeight.bold,
                            50,
                          ),
                        ),
                        Text(
                          "Aviral Gupta",
                          style: titleTextStyle(
                            colorScheme.onBackground,
                            FontWeight.bold,
                            50,
                          ),
                        ),
                        Text(
                          "I am a student",
                          style: titleTextStyle(
                            colorScheme.onBackground,
                            FontWeight.bold,
                            50,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 5,
                          width: 100,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  BounceInDown(
                    delay: const Duration(seconds: 1),
                    child: const CircleAvatar(
                      maxRadius: 130,
                      minRadius: 60,
                      backgroundImage: AssetImage(
                        "assets/aviral.jpeg",
                      ),
                      // backgroundImage: NetworkImage(
                      //   "https://png.pngtree.com/element_our/20190528/ourmid/pngtree-520-valentine-s-day-boy-avatar-image_1153279.jpg",
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
