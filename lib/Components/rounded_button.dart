import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final Color color;
  final String buttonText;
  final Function onPress;
  final double topRight;
  final double topLeft;
  final double bottomRight;
  final double bottomLeft;

  RoundedButton({@required this.color,
    @required this.buttonText, @required this.onPress, @required this.topRight,
    @required this.topLeft, @required this.bottomRight, @required this.bottomLeft});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(topRight),
          topLeft: Radius.circular(topLeft),
          bottomRight: Radius.circular(bottomRight),
          bottomLeft: Radius.circular(bottomLeft)
        ),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 300.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
