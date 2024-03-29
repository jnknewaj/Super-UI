import 'package:flutter/material.dart';
import 'package:super_ui/super_ui.dart';

class ExTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
      ),
      body: const Center(
        child: EditText(
          hintText: 'This Is Hint',
          labelText: 'Label',
          helperText: 'Helper Text',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }
}
