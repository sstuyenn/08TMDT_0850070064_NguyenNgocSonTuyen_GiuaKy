import 'package:flutter/material.dart' show Border, BorderRadius, BoxDecoration, BuildContext, Center, Container, EdgeInsets, StatelessWidget, Widget;
import 'package:bailink1_screens/utils/constants.dart';

class BorderBox extends StatelessWidget {
  const BorderBox(
      {super.key,
        required this.width,
        required this.height,
        required this.child,
        this.padding});

  final double width, height;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: kColorWhite,
        border: Border.all(
          color: kColorGrey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(child: child),
    );
  }
}
