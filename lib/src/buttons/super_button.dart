import 'package:flutter/material.dart';

class SuperButton extends StatelessWidget {
  final String text;

  /// Default is 15.0
  final double textSize;

  /// Default is black.
  final Color textColor;

  /// Default is white.
  final Color buttonColor;

  /// Default is 0.0
  final double borderRadius;

  /// Default is 10.0
  final double elevation;
  final Function onPressed;

  /// Default height and width 20 & 100 respectively.
  final double height, width;

  /// Creates a button where radius can be added
  SuperButton({
    Key key,
    @required this.text,
    this.textSize = 15.0,
    this.textColor = Colors.black,
    this.buttonColor = Colors.white,
    this.borderRadius = 0.0,
    this.elevation = 10.0,
    this.onPressed,
    this.height = 20.0,
    this.width = 100.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: RaisedButton(
        elevation: elevation,
        color: buttonColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        padding: const EdgeInsets.all(0.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          width: width,
          height: height,
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
