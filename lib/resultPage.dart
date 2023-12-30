// ignore_for_file: file_names

import 'package:bmindex/Colors.dart';
import 'package:bmindex/homePage.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.result});
  final double result;
  getmessage() {
    if (result < 18.5) {
      return "Your Should Earn more Weight.";
    }
    if (result >= 18.5 && result <= 24.9) {
      return "Good You are Look fit keep going on";
    }
    if (result >= 25 && result <= 29.9) {
      return "You Should lose more weghits to be fit";
    }
    if (result >= 30 && result <= 34.9) {
      return "your weight is high, you should eat the healthy food and stop eat junk food ";
    }
    if (result >= 35 && result <= 39.9) {
      return "your weight is too high, you should eat the healthy food and stop eat junk food)";
    } else {
      return "You Should Stop eating Your look like a big Cow";
    }
  }

  getcolor() {
    if (result < 18.5) {
      return Colors.blue;
    }
    if (result >= 18.5 && result <= 24.9) {
      return Colors.green;
    }
    if (result >= 25 && result <= 29.9) {
      return Colors.yellow[600];
    }
    if (result >= 30 && result <= 34.9) {
      return Colors.deepOrange[300];
    }
    if (result >= 35 && result <= 39.9) {
      return Colors.deepOrange[600];
    } else {
      return Colors.deepOrange[900];
    }
  }

  getresult() {
    if (result < 18.5) {
      return "UnderWeight";
    }
    if (result >= 18.5 && result <= 24.9) {
      return "Normal";
    }
    if (result >= 25 && result <= 29.9) {
      return "Overweight";
    }
    if (result >= 30 && result <= 34.9) {
      return "Obesity (Class |)";
    }
    if (result >= 35 && result <= 39.9) {
      return "Obesity (Class ||)";
    } else {
      return "Obesity (Class |||)";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorScreen.homepage,
        appBar: AppBar(
            backgroundColor: ColorScreen.homepage,
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const homePage(),
                    ));
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              const Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        "Your Result ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorScreen.inactiveselect,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(80),
                          child: Text(
                            getresult(),
                            style: TextStyle(
                                color: getcolor(),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          result.toStringAsFixed(1),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            getmessage(),
                            style: const TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorScreen.calcukateVuttons,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const homePage(),
                            ));
                      },
                      child: const Text(
                        "RE-CALCULATE",
                        style: TextStyle(fontSize: 20),
                      )))
            ],
          ),
        ));
  }
}
