import 'package:flutter/material.dart';

/**
 * Sometimes we need to show empty space. This widget is for that.
 */

class EmptyWidget extends StatelessWidget {

  /// For graving empty space
  const EmptyWidget();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 0.0,
      width: 0.0,
    );
  }
}
