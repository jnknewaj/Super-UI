import 'package:flutter/material.dart';

enum TextType {
  error,
  normal,
  warning,
}

/// Widget to display a highlighted text
class BillboardText extends StatelessWidget {
  /// Text size follows the size form headline5
  final String text;

  final TextType textType;

  /// Default is Pink
  final Color? boardColor;

  /// Default is white
  final Color? borderColor;

  /// Default is 100
  final double? boardHeight;

  /// Creates a billboard with a text at the center
  const BillboardText({
    Key? key,
    required this.text,
    required this.textType,
    this.boardColor,
    this.borderColor,
    this.boardHeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // todo make a screenutil
      height: boardHeight == null ? 100.0 : boardHeight,
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor == null ? Colors.pink : borderColor!,
          width: 3.0,
        ),
        color: boardColor == null ? Colors.white : boardColor,
      ),
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            color: textType == TextType.error
                ? Colors.red
                : textType == TextType.warning
                    ? Colors.orange
                    : Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: Theme.of(context).textTheme.headline5!.fontSize),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
