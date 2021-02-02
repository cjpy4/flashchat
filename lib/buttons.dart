import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  NavButton(
      {@required this.navID,
      @required this.buttonText,
      @required this.buttonColor,
      @required this.onPressed});
  final String navID;
  final String buttonText;
  final Color buttonColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
