import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'insert_container.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.bmi, required this.results, required this.interpretation});
  final bmi;
  final results;
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Your Results",
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 17,
                child: InsertContainer(
                  color: kActiveColor,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          results,
                          style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          bmi,
                          style: kBMINumberTextStyle,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 70,
                          color: kInactiveColor,
                          child: Center(child: Text("Save Results")),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InputPage()),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: Text("RE - CALCULATE",
                          style: TextStyle(
                            fontSize: 30,
                          )),
                    ),
                    margin: EdgeInsets.only(top: 10),
                    color: kBottomBarColor,
                    height: kBottomBarHeight,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
