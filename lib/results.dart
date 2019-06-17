import 'package:flutter/material.dart';

//Mine
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:
            CrossAxisAlignment.stretch, //this will make it as wide as possible
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kresultText,
                  ),
                  Text('18.3', style: kBMITextStyle),
                  Text(
                    'Your BMI Result is quite low, you should eat more',
                    textAlign: TextAlign.center,
                    style: kBodyText,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
