//ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }
class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;


  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AniProps>(
      // [
      //  Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      //   Track("translateY").add(
      //     Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
      //     curve: Curves.easeOut)
      // ]

    )
      ..add(
        AniProps.opacity,
        Tween(begin: 0.0, end: 1.0),
        const Duration(milliseconds: 300),
      )
      ..add(AniProps.translateY, Tween(begin: -30.0, end: 0.0),
          const Duration(milliseconds: 500), Curves.easeOut);

    return PlayAnimation<MultiTweenValues<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity), //(animation as Map)["opacity"],
        child: Transform.translate(
            offset: Offset(0, value.get(AniProps.translateY)), child: child),
      ),
    );
  }
}