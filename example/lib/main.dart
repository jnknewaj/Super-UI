import 'package:flutter/material.dart';
import 'package:super_ui/super_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super UI'),
      ),
      body: Center(
        child: ListView(
          children: [
            CircularImageHolder(
              imageUrl:
                  'https://lh3.googleusercontent.com/--5H57B8aG4-DX9s79Spo3ygrsI9NMFnZo1uTZzs5s5AeeOvmiy81k__tu9r7JbRTTLzryK-oUy0UREclmD_qfV81VvaT4K9jJa8gg',
              imageSize: 0.3,
            ),
            BillboardText(
              text: 'Hello Super UI',
              textType: TextType.error,
              boardColor: Colors.teal,
              borderColor: Colors.black,
              boardHeight: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
