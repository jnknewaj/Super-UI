import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Gradient gradient;
  final Function? onPressed;
  final String text;

  /// Default is black.
  final Color textColor;

  /// Default is 40 which is also the minimum height.
  final double height;

  /// Default is 90 which is also the minimum width.
  final double width;

  /// Default is 80.0, keep it 0 if you radius is not needed.
  final double borderRadius;

  final EdgeInsetsGeometry? padding;

  /// Creates a button with the given gradient effect.
  const GradientButton({
    Key? key,
    required this.gradient,
    this.onPressed,
    required this.text,
    this.textColor = Colors.black,
    this.height = 40,
    this.width = 90,
    this.borderRadius = 80.0,
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
            gradient: gradient,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          child: Center(
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
