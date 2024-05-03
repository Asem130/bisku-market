import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleSlidingAnimation extends StatelessWidget {
  const TitleSlidingAnimation({
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
              'all your grocery in your fingertips',
              textAlign: TextAlign.center,
              style: Styles.textStyle24
                  .copyWith(color: kPrimaryColor, fontFamily: 'Lobster'),
            ),
          );
        });
  }
}
