import 'package:flutter/material.dart';
import 'package:portfoilio/screens/home_page.dart';
import 'package:portfoilio/utils/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          return HomePage(constraints);
        },
      ),
    );
  }
}
