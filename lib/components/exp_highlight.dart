

import 'package:flutter/material.dart';

import '../screens/constants.dart';

class ExperienceHightLightHomeBanner extends StatelessWidget {
  const ExperienceHightLightHomeBanner({
    super.key, required this.counter, this.label,
  });
  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 4,),
        Text(label!,style: Theme.of(context).textTheme.titleSmall,),

      ],
    );
  }
}
