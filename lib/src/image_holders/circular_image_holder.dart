import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:super_ui/src/res/strings/super_ui_strings.dart';
import 'package:super_ui/super_ui.dart';

class CircularImageHolder extends StatelessWidget {
  /// Provide imageFile if the source of image is a file instead of url.
  final File? imageFile;

  /// If imageUrl is null, will show a default image from network.
  final String? imageUrl;

  final String? assetImagePath;

  /// Icon at the right bottom corner of the image.
  final IconData? icon;

  /// Color for icon, default is white.
  final Color? iconColor;

  /// Color for icon background, default is light blue.
  final Color? iconBackgroundColor;

  /// Needed for images with transparent background. Default is white.
  final Color? imageBackgroundColor;

  final Function()? onImageAdded;

  final Function? onPressed;

  /// [imageSize] Should be in between 0.1 and 1.0
  final double imageSize;

  /// Creates a circular image with the given asset image.
  ///
  /// If asset image is null, it create image with the given file.
  ///
  /// If even the file is not given, it creates image with the url, fetch a default network image if url is null.
  ///
  /// Can use an optional icon with the image
  const CircularImageHolder({
    Key? key,
    this.imageFile,
    this.imageUrl,
    this.assetImagePath,
    this.icon,
    this.iconColor,
    this.iconBackgroundColor,
    this.imageBackgroundColor = Colors.white,
    this.onImageAdded,
    this.onPressed,
    required this.imageSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imageSizeFactor =
        MediaQuery.of(context).size.width * imageSize;
    final double iconSizeFactor = imageSizeFactor * 0.2;
    return Align(
      child: InkWell(
        onTap: onPressed as void Function()?,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: imageBackgroundColor, shape: BoxShape.circle),
              width: imageSizeFactor,
              height: imageSizeFactor,
              child: ClipOval(
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: assetImagePath == null
                      ? imageFile == null
                          ? CachedNetworkImage(
                              imageUrl: imageUrl == null
                                  ? SuperUiString.defaultImageUrl
                                  : imageUrl!.isEmpty
                                      ? SuperUiString.defaultImageUrl
                                      : imageUrl!,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      LinearProgressIndicator(
                                value: downloadProgress.progress,
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              fit: BoxFit.fill,
                              fadeInCurve: Curves.bounceIn,
                              fadeInDuration:
                                  const Duration(milliseconds: 1000),
                            )
                          : Image.file(
                              imageFile!,
                              fit: BoxFit.fill,
                            )
                      : Image.asset(
                          assetImagePath!,
                          fit: BoxFit.fill,
                          package: 'super_ui',
                        ),
                ),
              ),
            ),
            icon == null
                ? const EmptyWidget()
                : Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: onImageAdded ?? () {},
                        child: CircleAvatar(
                          radius: iconSizeFactor,
                          backgroundColor: iconBackgroundColor ?? Colors.blue[400],
                          child: Icon(
                            icon,
                            color: iconColor ?? Colors.white,
                            size: iconSizeFactor * 0.9,
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
