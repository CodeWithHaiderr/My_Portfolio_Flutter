import 'package:flutter/material.dart';
import 'package:portfolio/screens/constants.dart';

class AnimatedLinearProgressBarIndicator extends StatelessWidget {
  const AnimatedLinearProgressBarIndicator({
    super.key, required this.percentage, required this.label,
  });

   final double percentage;
   final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0,end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) =>
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                        (value * 100).toInt().toString() + "%"
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding / 2,),
                LinearProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
              ],
            ),
      ),
    );
  }
}