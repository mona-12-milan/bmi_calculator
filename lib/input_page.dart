import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'insert_container.dart';
import 'icon_creator.dart';
import "constants.dart";
import 'Result_page.dart';
import 'BMI_clac_brain.dart';

double height = 180;
double weight = 80;
double age = 19;
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  void updateGenderMale() {
    setState(() {
      selectedGender = Gender.male;
    });
  }

  void updateGenderFemale() {
    setState(() {
      selectedGender = Gender.female;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InsertContainer(
                    color: selectedGender == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    child: IconCreator(icon: Icons.male, text: "MALE  "),
                    onTap: updateGenderMale,
                  ),
                ),
                Expanded(
                  child: InsertContainer(
                    color: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    child: IconCreator(icon: Icons.female, text: "FEMALE"),
                    onTap: updateGenderFemale,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InsertContainer(
              color: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height,
                      min: 120,
                      max: 250,
                      onChanged: (newVal) {
                        setState(() {
                          height = newVal.roundToDouble();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InsertContainer(
                    color: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//I can create my own buttons with diff shape ans size and everything what it will do everything fom scratch
//refer BMI app 12th lecture for more details, im not implementing it
                            FloatingActionButton(
                              heroTag: "btn-",
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Color(0xFF8D8E98),
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              heroTag: "btn+",
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Color(0xFF8D8E98),
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InsertContainer(
                    color: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//I can create my own buttons with diff shape ans size and everything what it will do everything fom scratch
//refer BMI app 12th lecture for more details, im not implementing it
                            FloatingActionButton(
                              heroTag: "btn-",
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Color(0xFF8D8E98),
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              heroTag: "btn+",
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0xFF8D8E98),
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                BMI calc = BMI(height: height, weight: weight);
                print(weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                        bmi: calc.getBMI(),
                        results: calc.result(),
                        interpretation: calc.interpretations()),
                  ),
                );
              });
            },
            child: Container(
              child: Center(
                child: Text("CALCULATE",
                    style: TextStyle(
                      fontSize: 30,
                    )),
              ),
              margin: EdgeInsets.only(top: 10),
              color: kBottomBarColor,
              height: kBottomBarHeight,
            ),
          )
        ],
      ),
    );
  }
}
