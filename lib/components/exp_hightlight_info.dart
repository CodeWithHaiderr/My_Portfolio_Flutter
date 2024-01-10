

import 'package:flutter/material.dart';
import 'package:portfolio/components/exp_highlight.dart';
import 'package:portfolio/responsive.dart';

import '../screens/constants.dart';
import 'animated_counter.dart';

class ExperienceHightlightsInfo extends StatelessWidget {
  const ExperienceHightlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Responsive.isMobileLarge(context)
          ? Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding,),
              Text("Expereince",style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: defaultPadding / 5,),
              ExperienceHightLightHomeBanner(
                counter: HomeBannerAnimatedCounter(
                  value: 1,
                  text: " Year",
                ),
                label: " Flutter development",
              ),
              ExperienceHightLightHomeBanner(
                counter: HomeBannerAnimatedCounter(
                  value: 6,
                  text: " Months",
                ),
                label: "Android development(FYP)",
              ),
              ExperienceHightLightHomeBanner(
                counter: HomeBannerAnimatedCounter(
                  value: 4,
                  text: " Months",
                ),
                label: ".net backend internee",
              ),
            ],
          )
        ],
      )
          : Column(
        children: [
          SizedBox(height: defaultPadding / 5,),
          ExperienceHightLightHomeBanner(
            counter: HomeBannerAnimatedCounter(
              value: 1,
              text: " Year",
            ),
            label: "experience in Flutter development",
          ),
          ExperienceHightLightHomeBanner(
            counter: HomeBannerAnimatedCounter(
              value: 6,
              text: " Months",
            ),
            label: "experience in Android development(FYP)",
          ),
          ExperienceHightLightHomeBanner(
            counter: HomeBannerAnimatedCounter(
              value: 4,
              text: " Months",
            ),
            label: "expereince as .net backend internee",
          ),

        ],
      ),
    );
  }
}