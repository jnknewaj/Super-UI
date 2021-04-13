import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Helper {
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static Future<File> pickImageFromGallery() async {
    final picker = ImagePicker();
    final imageFile = await (picker.getImage(source: ImageSource.gallery) as FutureOr<PickedFile>);
    return File(imageFile.path);
  }

  static bool isNullOrEmpty(Object o) => o == null || "" == o;

  static double getScreenHeight(BuildContext context) {
    return screenSize(context).height;
  }

  static double getScreenWidth(BuildContext context) {
    return screenSize(context).width;
  }

  static double screenHeightPortion(
    BuildContext context, {
    double time = 1,
    double reducedBy = 0.0,
  }) {
    return (screenSize(context).height * time) - reducedBy;
  }

  static double screenWidthPortion(
    BuildContext context, {
    double time = 1,
    double reducedBy = 0.0,
  }) {
    return (screenSize(context).width * time) - reducedBy;
  }

  static void logPrint(String tag, [String? message]) {
    debugPrint("$tag  ::  $message");
  }
}

extension StrX on String {
  bool get isNullOrEmpty => this == null || isEmpty;
}
