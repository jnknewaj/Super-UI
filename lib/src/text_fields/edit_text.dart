import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final Color textColor;

  /// Default is 0
  final double borderRadius;
  final Color borderColor;
  final Color backgroundColor;
  final Color labelColor;
  final Color hintColor;
  final String hintText;
  final String labelText;
  final String helperText;
  final Color helperColor;
  final Icon prefixIcon;
  final Icon suffixIcon;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final int maxLength;
  final int maxLine, minLine;
  final TextInputAction textInputAction;

  /// Default is false
  final bool obscureText;

  /// Default is TextInputType.text
  final TextInputType textInputType;

  /// Creates TextFormField
  const EditText({
    Key key,
    this.textColor,
    this.borderRadius = 0.0,
    this.borderColor = Colors.grey,
    this.backgroundColor,
    this.labelColor,
    this.hintColor,
    this.hintText,
    this.labelText,
    this.helperText,
    this.helperColor,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.validator,
    this.maxLength,
    this.obscureText = false,
    this.minLine,
    this.maxLine,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 18.0, right: 18.0, bottom: 12.0, top: 15.0),
      child: TextFormField(
        style: TextStyle(color: textColor),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          // ignore: avoid_bool_literals_in_conditional_expressions
          filled: backgroundColor == null ? false : true,
          fillColor: backgroundColor,
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor),
          helperText: helperText,
          helperStyle: TextStyle(color: helperColor),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        onChanged: onChanged,
        validator: validator,
        maxLength: maxLength,
        obscureText: obscureText,
        controller: controller,
        keyboardType: textInputType,
        maxLines: maxLine,
        minLines: minLine,
        textInputAction: textInputAction,
      ),
    );
  }
}
