import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:super_ui/src/utils/helper.dart';

class ListLoading extends StatelessWidget {
  const ListLoading();
  @override
  Widget build(BuildContext context) {
    final height = Helper.screenHeightPortion(context, time: 0.15);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (_, __) => Container(
            height: height,
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: height - 20,
                  height: height - 20,
                  color: Colors.white,
                ),
                Container(padding: const EdgeInsets.symmetric(horizontal: 8.0)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: height * 0.25,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                      ),
                      Container(
                        width: double.infinity,
                        height: height * 0.15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}

