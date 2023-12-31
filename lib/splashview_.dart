// ignore_for_file: camel_case_types

import 'package:bmindex/Colors.dart';
import 'package:bmindex/homePage.dart';
import 'package:flutter/material.dart';

class splashview extends StatefulWidget {
  const splashview({super.key});

  @override
  State<splashview> createState() => _splashviewState();
}

class _splashviewState extends State<splashview> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const homePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/bmi2.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Test Your Body",
                  style: TextStyle(
                      color: ColorScreen.activeselect,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.sports_gymnastics),
              ],
            )
          ],
        ),
      ),
    );
  }
}
