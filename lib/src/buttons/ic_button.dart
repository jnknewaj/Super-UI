import 'package:flutter/material.dart';

class IcButton extends StatelessWidget {
  final IconData icon;

  final String text;

  /// Default color for icon is black.
  final Color iconColor;

  /// Default color for icon is white.
  final Color buttonColor;

  final Function onPressed;

  /// Default is 140.0
  final double width;

  /// Default is 11.5
  final double fontSize;

  /// Default is grey.
  final Color textColor;

  /// Creates a button with an icon and a text.
  IcButton({
    @required this.icon,
    @required this.text,
    this.iconColor = Colors.black,
    this.buttonColor = Colors.white,
    this.onPressed,
    this.width = 140.0,
    this.fontSize = 11.5,
    this.textColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Container(
            color: buttonColor,
            width: width,
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  color: iconColor,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                  ),
                  textScaleFactor: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
