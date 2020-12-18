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
      body: Container(
        color: Colors.blue[400],
        child: Stack(
          children: [
            ListView(
              children: [
                CircularImageHolder(
                  imageUrl: null,
                  imageSize: 0.5,
                  icon: Icons.add,
                ),
                SizedBox(height: 10.0),
                GradientButton(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.blueGrey,
                  ]),
                  text: 'Gradient Button',
                  textColor: Colors.white,
                  onPressed: () {},
                  width: 150.0,
                ),
                SizedBox(height: 10.0),
                IcButton(
                  icon: Icons.add_a_photo,
                  text: "IcButton",
                  buttonColor: Colors.blue,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  width: 150.0,
                ),
                SizedBox(height: 10.0),
                SuperButton(
                  text: 'Super Button',
                  onPressed: () {},
                  buttonColor: Colors.red[600],
                  textColor: Colors.white,
                  width: 140.0,
                ),
              ],
            ),
            Positioned(
              left: 180,
              right: 0,
              bottom: 80.0,
              child: GlowingStars(),
            ),
          ],
        ),
      ),
    );
  }
}
