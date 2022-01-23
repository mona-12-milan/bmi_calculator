import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0A0E21),
            centerTitle: true,
            shadowColor: Colors.black,
            elevation: 0,
          ),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
            thumbColor: kBottomBarColor,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            overlayColor: Color(0x29EB1555),
          )),
      home: InputPage(),
    );
  }
}
