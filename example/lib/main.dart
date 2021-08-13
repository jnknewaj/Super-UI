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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super UI'),
      ),
      body: ListView(
        children: [
          const CircularImageHolder(imageSize: 0.3),
          const SizedBox(height: 10.0),
          GradientButton(
            gradient: const LinearGradient(colors: [
              Colors.blue,
              Colors.blueGrey,
            ]),
            text: 'Gradient Button',
            textColor: Colors.white,
            onPressed: () {},
            width: 250.0,
            height: 50.0,
          ),
          const SizedBox(height: 10.0),
          const IcButton(
            icon: Icons.add_a_photo,
            text: "IcButton",
            buttonColor: Colors.blue,
            textColor: Colors.white,
            iconColor: Colors.white,
            width: 150.0,
          ),
          const SizedBox(height: 10.0),
          SuperButton(
            text: 'Super Button',
            onPressed: () {},
            buttonColor: Colors.black,
            textColor: Colors.white,
            width: 240.0,
            borderRadius: 20.0,
          ),
          const SizedBox(height: 50.0),
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
                onPressed: () {},
                mini: true,
              ),
            ],
          ),
          const SizedBox(height: 50.0),
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
            onPressed: () {},
          ),
          AuthButton(
            item: SocialItem.microsoft,
            onPressed: () {},
          ),
          const CircularImageHolder(
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
