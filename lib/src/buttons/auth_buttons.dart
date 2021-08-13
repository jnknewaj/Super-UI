import 'package:flutter/material.dart';

import 'package:super_ui/super_ui.dart';

enum SocialItem {
  apple,
  facebook,
  twitter,
  github,
  google,
  microsoft,
}

/// For internal use of the package itself
class ButtonBuilder extends StatelessWidget {
  final String? imagePath;
  final String? text;

  /// Background color. Default is white.
  final Color? color;
  final Color? imageBackgroundColor;
  final Color? textColor;
  final double borderRadius;
  final Function onPressed;
  final double? width;
  final double? height;
  final bool mini;

  const ButtonBuilder({
    Key? key,
    this.imagePath,
    this.text,
    this.color = Colors.white,
    this.imageBackgroundColor,
    this.textColor,
    this.borderRadius = 0.0,
    required this.onPressed,
    this.width,
    this.height,
    this.mini = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (mini == true) {
      return Align(
        child: CircularImageHolder(
          imageSize: 0.1,
          assetImagePath: imagePath,
          imageBackgroundColor: imageBackgroundColor,
          onPressed: onPressed,
        ),
      );
    }
    return Align(
      child: MaterialButton(
        color: color,
        onPressed: onPressed as void Function()?,
        child: Container(
          width: width,
          height: height,
          constraints: const BoxConstraints(minWidth: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: CircularImageHolder(
                  imageSize: 0.07,
                  assetImagePath: imagePath,
                  imageBackgroundColor: imageBackgroundColor,
                ),
              ),
              Text(
                'Sign In With $text',
                style: TextStyle(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final SocialItem item;
  final Function onPressed;

  /// Default is 220, minimum is 200
  final double width;

  /// Default is 40
  final double height;

  final bool mini;

  const AuthButton({
    Key? key,
    required this.item,
    required this.onPressed,
    this.width = 220,
    this.height = 40,
    this.mini = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (item) {
      case SocialItem.apple:
        return ButtonBuilder(
          onPressed: onPressed,
          imagePath: 'assets/images/apple.png',
          text: 'Apple',
          height: height,
          width: width,
          mini: mini,
        );
      case SocialItem.github:
        return ButtonBuilder(
          onPressed: onPressed,
          color: Colors.grey[800],
          textColor: Colors.white,
          imagePath: 'assets/images/github.png',
          text: 'Github',
          imageBackgroundColor: Colors.white,
          height: height,
          width: width,
          mini: mini,
        );
      case SocialItem.google:
        return ButtonBuilder(
          onPressed: onPressed,
          imagePath: 'assets/images/google.png',
          text: 'Google',
          height: height,
          width: width,
          mini: mini,
        );
      case SocialItem.twitter:
        return ButtonBuilder(
          onPressed: onPressed,
          color: Colors.blue,
          textColor: Colors.white,
          imagePath: 'assets/images/twitter.png',
          text: 'Twitter',
          height: height,
          width: width,
          mini: mini,
        );
      case SocialItem.facebook:
        return ButtonBuilder(
          onPressed: onPressed,
          color: Colors.blue,
          textColor: Colors.white,
          imagePath: 'assets/images/facebook.png',
          text: 'Facebook',
          height: height,
          width: width,
          mini: mini,
        );
      case SocialItem.microsoft:
        return ButtonBuilder(
          onPressed: onPressed,
          imagePath: 'assets/images/ms.png',
          text: 'Microsoft',
          height: height,
          width: width,
          mini: mini,
        );
      default:
        return Container();
    }
  }
}
