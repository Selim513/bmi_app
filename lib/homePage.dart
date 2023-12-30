// ignore_for_file: file_names, camel_case_types

import 'package:bmindex/Colors.dart';
import 'package:bmindex/resultPage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool active = true;
  int height = 130;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScreen.homepage,
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: ColorScreen.homepage,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  //-----------first screen
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (active)
                                ? ColorScreen.activeselect
                                : ColorScreen.inactiveselect,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          active = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (!active)
                                ? ColorScreen.activeselect
                                : ColorScreen.inactiveselect,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //--------------------- second screen----------------

            Expanded(
                child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: ColorScreen.inactiveselect,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Height",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$height cm",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 220,
                    activeColor: ColorScreen.activeselect,
                    inactiveColor: ColorScreen.calcbutton,
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  )
                ],
              ),
            )),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    //-----------last screen---------
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorScreen.inactiveselect,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "$weight",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor: ColorScreen.calcbutton,
                                        shape: const CircleBorder()),
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor: ColorScreen.calcbutton,
                                        shape: const CircleBorder()),
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorScreen.inactiveselect,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "age",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "$age",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor: ColorScreen.calcbutton,
                                        shape: const CircleBorder()),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    style: IconButton.styleFrom(
                                        backgroundColor: ColorScreen.calcbutton,
                                        shape: const CircleBorder()),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
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
                      double result =
                          weight.toDouble() / (height * .01 * height * .01);
                             
                       
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultPage(
                              result: result,
                            ),
                          ));
                    },
                    child: const Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }
}
