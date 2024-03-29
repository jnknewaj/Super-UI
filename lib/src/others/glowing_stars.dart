import 'package:flutter/material.dart';
import 'package:super_ui/src/others/bubble.dart';

class GlowingStars extends StatelessWidget {
  /// Creates stars like glowing in light white color. Better to use in Positioned widget.
  const GlowingStars();

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 7.0,
              color: Colors.white30.withAlpha(40),
            ),
          ),
          child: const _StarIcon(),
        ),
        const Positioned(
          bottom: -40.0,
          left: 0.0,
          child: _StarIcon(),
        ),
        const Positioned(
          bottom: -10.0,
          left: 10.0,
          child: _StarIcon(),
        ),
        const Positioned(
          bottom: 20.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          bottom: 10.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: 10.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: 10.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -50.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -30.0,
          top: 20.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -10.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -20.0,
          bottom: 20.0,
          child: Bubble(size: 3.0),
        ),
        //
        const Positioned(
          left: -50.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -35.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -30.0,
          top: 35.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -20.0,
          bottom: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          bottom: -40.0,
          left: 0.0,
          child: _StarIcon(),
        ),
        const Positioned(
          bottom: -10.0,
          left: 10.0,
          child: _StarIcon(),
        ),
        const Positioned(
          bottom: 20.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          bottom: 10.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: 10.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: 10.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -50.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          left: -30.0,
          top: 20.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          right: -10.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          right: -20.0,
          bottom: 20.0,
          child: Bubble(size: 3.0),
        ),
        //
        const Positioned(
          right: -50.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          right: -35.0,
          top: 30.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          right: -30.0,
          top: 35.0,
          child: Bubble(size: 3.0),
        ),
        const Positioned(
          right: -20.0,
          bottom: 30.0,
          child: Bubble(size: 3.0),
        ),
      ],
    );
  }
}

class _StarIcon extends StatelessWidget {
  const _StarIcon();

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.white30.withAlpha(40),
    );
  }
}
