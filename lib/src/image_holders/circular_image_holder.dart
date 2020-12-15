import 'dart:io';

import 'package:flutter/material.dart';
import 'package:super_ui/src/res/strings/super_ui_strings.dart';

class CircularImageHolder extends StatelessWidget {
  /// Provide imageFile if the source of image is a file instead of url.
  final File imageFile;

  /// If imageUrl is null, will show a default image from network.
  final String imageUrl;

  /// Icon at the right bottom corner of the image.
  final IconData icon;

  /// Color for icon, default is white.
  final Color iconColor;
  
  /// Color for icon background, default is light blue.
  final Color iconBackgroundColor;
  
  final Function() onImageAdded;

  /// [imageSize] Should be in between 0.1 and 1.0
  final double imageSize;

  /// Creates a circular image with the given image file or image url.
  ///
  /// Can use an optional icon with the image
  const CircularImageHolder({
    Key key,
    this.imageFile,
    @required this.imageUrl,
    this.icon,
    this.iconColor,
    this.iconBackgroundColor,
    this.onImageAdded,
    @required this.imageSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSizeFactor = MediaQuery.of(context).size.width * imageSize;
    double iconSizeFactor = imageSizeFactor * 0.2;
    return Align(
      child: Stack(
        children: <Widget>[
          Container(
            width: imageSizeFactor,
            height: imageSizeFactor,
            child: ClipOval(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: imageFile == null
                    ? Image.network(
                        imageUrl ?? SuperUiString.defaultImageUrl,
                        fit: BoxFit.fill,
                      )
                    : Image.file(
                        imageFile,
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          ),
          icon == null
              ? Container()
              : Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onImageAdded == null ? () {} : onImageAdded,
                      child: CircleAvatar(
                        radius: iconSizeFactor,
                        backgroundColor: iconBackgroundColor == null
                            ? Colors.blue[400]
                            : iconBackgroundColor,
                        child: Icon(
                          icon,
                          color: iconColor == null ? Colors.white : iconColor,
                          size: iconSizeFactor * 0.9,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
