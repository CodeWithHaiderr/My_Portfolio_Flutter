import 'package:flutter/material.dart';
import 'package:portfolio/screens/constants.dart';

import 'animated_linear_progressbar_indicator.dart';

class CodingSkills extends StatelessWidget {
  const CodingSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding Skills ", style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        AnimatedLinearProgressBarIndicator(percentage: 0.8, label: "Dart",),
        AnimatedLinearProgressBarIndicator(percentage: 0.7, label: "Java/Kotlin",),
        AnimatedLinearProgressBarIndicator(percentage: 0.7, label: "Ms SQL Server",),
        AnimatedLinearProgressBarIndicator(percentage: 0.6, label: "HTML/CSS/Bootstrap",),
        AnimatedLinearProgressBarIndicator(percentage: 0.6, label: "C++/.net",),
      ],
    );
  }
}
