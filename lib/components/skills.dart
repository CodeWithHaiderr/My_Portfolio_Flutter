

import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_circular_progress_indicator_skills.dart';
import 'package:portfolio/screens/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: AnimatedCircularProgressIndicator(
            percentage: 0.75,
            label: "Flutter",),
        ),
        SizedBox(width: defaultPadding,),
        Expanded(
          child: AnimatedCircularProgressIndicator(
            percentage: 0.65,
            label: "Firebase",),
        ),
        SizedBox(width: defaultPadding,),
        Expanded(
          child: AnimatedCircularProgressIndicator(
            percentage: 0.60,
            label: "Web Development",),
        )
      ],
    );
  }
}