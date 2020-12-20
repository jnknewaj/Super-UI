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
      body: ListView(
        children: [
          CircularImageHolder(
            imageUrl: null,
            imageSize: 0.3,
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
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              AuthButton(
                item: SocialItem.apple,
                onPressed: () {},
                mini: true,
              ),
              AuthButton(
                item: SocialItem.facebook,
                onPressed: () {},
                mini: true,
              ),
              AuthButton(
                item: SocialItem.google,
                onPressed: () {},
                mini: true,
              ),
              AuthButton(
                item: SocialItem.twitter,
                onPressed: () {},
                mini: true,
              ),
              AuthButton(
                item: SocialItem.microsoft,
                onPressed: () {},
                mini: true,
              ),
              AuthButton(
                item: SocialItem.github,
                onPressed: () {
                  print('fgf');
                },
                mini: true,
              ),
            ],
          ),
          SizedBox(height: 50.0),
          AuthButton(
            item: SocialItem.apple,
            onPressed: () {},
          ),
          AuthButton(
            item: SocialItem.github,
            onPressed: () {},
          ),
          AuthButton(
            item: SocialItem.google,
            onPressed: () {},
          ),
          AuthButton(
            item: SocialItem.twitter,
            onPressed: () {},
          ),
          AuthButton(
            item: SocialItem.facebook,
            onPressed: () {
              print('fb');
            },
          ),
          AuthButton(
            item: SocialItem.microsoft,
            onPressed: () {},
          ),
          CircularImageHolder(
            imageSize: 0.5,
            imageUrl:
                'https://i.gadgets360cdn.com/large/google_io_afp_1583296131115.jpg',
            icon: Icons.add,
            iconBackgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
