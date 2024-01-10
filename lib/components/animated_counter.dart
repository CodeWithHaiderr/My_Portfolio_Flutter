

import 'package:flutter/material.dart';

import '../screens/constants.dart';

class HomeBannerAnimatedCounter extends StatelessWidget {
  const HomeBannerAnimatedCounter({
    super.key, required this.value, this.text,
  });

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0,end: value),
      duration: defaultDuration,
      builder: (context,value,child) => Text(
        "$value$text",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: primaryColor),),
    );
  }
}