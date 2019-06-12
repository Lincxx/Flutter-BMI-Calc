import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = 0xFF1D1E3;
const bottomCardColor = 0xffeb1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: Color(activeCardColor)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(activeCardColor)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: Color(activeCardColor)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: Color(activeCardColor)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(activeCardColor)),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomCardColor),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
