import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  /// Default is 50.0
  final double size ;

  /// Default is light white
  final Color color;

  /// Creates bubble shape.
  const Bubble({
    this.size = 50.0,
    this.color = Colors.white38,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}