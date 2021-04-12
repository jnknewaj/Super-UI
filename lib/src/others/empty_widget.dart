import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget();
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 0.0,
      width: 0.0,
    );
  }
}
