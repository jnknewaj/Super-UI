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
  final Function? onPressed;

  /// Default height and width 20 & 100 respectively.
  final double height, width;

  final EdgeInsetsGeometry? padding;

  /// Creates a button where radius can be added
  const SuperButton({
    Key? key,
    required this.text,
    this.textSize = 15.0,
    this.textColor = Colors.black,
    this.buttonColor = Colors.white,
    this.borderRadius = 0.0,
    this.elevation = 10.0,
    this.onPressed,
    this.height = 50.0,
    this.width = 100.0,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: onPressed as void Function()?,
        child: Ink(
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          child: Center(
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
      ),
    );
  }
}
