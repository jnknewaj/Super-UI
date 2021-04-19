import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:super_ui/src/utils/helper.dart';

class GridLoading extends StatelessWidget {
  const GridLoading();
  @override
  Widget build(BuildContext context) {
    final height = SuperHelper.screenHeightPortion(context, time: 0.20);
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.68,
        ),
        shrinkWrap: true,
        itemBuilder: (_, __) => Container(
          height: height,
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.0,
                height: height - 50,
                color: Colors.white,
              ),
              Container(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Container(
                width: 100.0,
                height: height * 0.15,
                color: Colors.white,
              ),
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}

