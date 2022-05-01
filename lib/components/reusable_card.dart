import 'package:flutter/material.dart';

class ReusableCardBmiApp extends StatelessWidget {
  ReusableCardBmiApp(
      {@required this.selectedColor, this.cardChild, this.onPress});

  final Color selectedColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFE6FFF3),
            width: 2.5,
          ),
          color: selectedColor,
          borderRadius: BorderRadius.circular(75.0),
        ),
      ),
    );
  }
}
