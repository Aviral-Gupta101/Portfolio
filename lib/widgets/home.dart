import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/utils/util.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: size.width >= 600
                ? MainAxisAlignment.spaceAround
                : MainAxisAlignment.center,
            children: [
              // size.width >= 600
              //     ? Flexible(flex: 2, child: Container())
              //     : Container(),
              SlideInLeft(
                delay: const Duration(seconds: 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: size.width >= 600
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hi, i am",
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
              // size.width >= 600
              //     ? Flexible(flex: 2, child: Container())
              //     : Container(),
              size.width >= 600
                  ? SlideInRight(
                      delay: const Duration(seconds: 1),
                      child: const CircleAvatar(
                        radius: 130,
                        backgroundImage: NetworkImage(
                          "https://png.pngtree.com/element_our/20190528/ourmid/pngtree-520-valentine-s-day-boy-avatar-image_1153279.jpg",
                        ),
                      ),
                    )
                  : Container(),
              // size.width >= 600
              // ? Flexible(flex: 2, child: Container())
              // : Container(),
            ],
          ),
          const SizedBox(height: 50),
          size.width < 600
              ? BounceInDown(
                  delay: const Duration(seconds: 1),
                  // duration: const Duration(seconds: 2),
                  // delay: Duration(seconds: 2),
                  child: const CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      "https://png.pngtree.com/element_our/20190528/ourmid/pngtree-520-valentine-s-day-boy-avatar-image_1153279.jpg",
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
