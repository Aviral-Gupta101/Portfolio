import 'package:flutter/material.dart';
import 'package:portfoilio/widgets/about_me.dart';
import 'package:portfoilio/widgets/header.dart';
import 'package:portfoilio/widgets/home.dart';

class HomePage extends StatelessWidget {
  final BoxConstraints constraints;
  const HomePage(this.constraints, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Header(constraints.maxWidth),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          // Header(constraints.maxWidth),
          Home(),
          AboutMe(),
        ],
      ),
    );
  }
}
