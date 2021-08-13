import 'package:flutter/material.dart';

class SuperRichText extends StatelessWidget {
  final String text;
  final String richText;
  final TextStyle? textStyle;
  final TextStyle? richTextStyle;

  /// A two parted text where [text] is the 1st & [richText] is the last part
  const SuperRichText({
    Key? key,
    required this.text,
    required this.richText,
    this.textStyle,
    this.richTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: textStyle ?? const TextStyle(color: Colors.grey),
        children: [
          TextSpan(text: text),
          TextSpan(
            text: richText,
            style: richTextStyle ??
                const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
          ),
        ],
      ),
    );
  }
}
