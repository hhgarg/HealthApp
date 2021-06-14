import 'package:flutter/material.dart';
import 'roundedCard.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RoundedCard(
            topic: "BMI",
          ),
          RoundedCard(
            topic: "CALORIES",
          ),
          RoundedCard(
            topic: "SLEEP",
          ),
          RoundedCard(
            topic: "WEIGHT",
            selected: true,
          ),
          RoundedCard(
            topic: "Sleep",
          ),
        ],
      ),
    );
  }
}
