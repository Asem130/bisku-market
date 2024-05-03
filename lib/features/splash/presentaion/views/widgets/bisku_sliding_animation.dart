import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BiskuTextSlidingAnimation extends StatelessWidget {
  const BiskuTextSlidingAnimation({
    super.key,
    required this.textSlidingAnimation,
  });

  final Animation<Offset> textSlidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: textSlidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: textSlidingAnimation,
            child: Text(
              'Bisku',
              textAlign: TextAlign.center,
              style: Styles.textStyle40.copyWith(
                fontFamily: 'Acme',
              ),
            ),
          );
        });
  }
}
