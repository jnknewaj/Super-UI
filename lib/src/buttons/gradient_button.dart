import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Gradient gradient;
  final Function onPressed;
  final String text;

  /// Default is black.
  final Color textColor;

  /// Default is 40 which is also the minimum height.
  final double height;

  /// Default is 90 which is also the minimum width.
  final double width;

  /// Default is 80.0, keep it 0 if you radius is not needed.
  final double borderRadius;

  /// Creates a button with the given gradient effect.
  const GradientButton({
    Key key,
    @required this.gradient,
    this.onPressed,
    @required this.text,
    this.textColor = Colors.black,
    this.height = 40,
    this.width = 90,
    this.borderRadius = 80.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          child: Container(
            width: width,
            height: height,
            constraints: const BoxConstraints(
              minWidth: 90.0,
              minHeight: 40.0,
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
