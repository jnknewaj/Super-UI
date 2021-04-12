import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// todo bring to super_ui package
class SuperOption extends HookWidget {
  /// text1 will be initially selected.
  final String text1;
  final String text2;

  // initial selection, either text1 or text2
  final String initialSelection;

  /// Default is primary color from theme.
  final Color selectedColor;

  /// Background color when chip is not selected
  final Color backgroundColor;
  final ValueSetter<String> callback;

  /// Creates two chips rectangle in shape
  const SuperOption({
    Key key,
    @required this.text1,
    @required this.text2,
    @required this.initialSelection,
    this.selectedColor,
    this.backgroundColor,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedChoice = useState(initialSelection);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // choicechip
        ChoiceChip(
          shape: const RoundedRectangleBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          label: Text(text1),
          selected: selectedChoice.value == text1,
          labelStyle: TextStyle(
            color: selectedChoice.value == text1 ? Colors.white : Colors.black,
            fontSize: 20.0,
          ),
          onSelected: (_) {
            selectedChoice.value = text1;
            callback(selectedChoice.value);
          },
          selectedColor: selectedColor ?? Theme.of(context).primaryColor,
          backgroundColor: backgroundColor,
        ),
        ChoiceChip(
          shape: const RoundedRectangleBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          label: Text(text2),
          selected: selectedChoice.value == text2,
          labelStyle: TextStyle(
            color: selectedChoice.value == text2 ? Colors.white : Colors.black,
            fontSize: 20.0,
          ),
          onSelected: (_) {
            selectedChoice.value = text2;
            callback(selectedChoice.value);
          },
          selectedColor: selectedColor ?? Theme.of(context).primaryColor,
          backgroundColor: backgroundColor,
        ),
      ],
    );
  }
}

