
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../screens/constants.dart';
import 'flutter_coded_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding/2),
      child: AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.jpeg",
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Discover my Amazing \nProjects Space",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                        : Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  if(Responsive.isMobileLarge(context))
                    SizedBox(height: defaultPadding/2,),
                  MyBuildAnimatedText(),
                  SizedBox(height: defaultPadding,),
                  // if(!Responsive.isMobileLarge(context))
                  //   ElevatedButton(
                  //     onPressed: (){},
                  //     style: TextButton.styleFrom(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: defaultPadding * 2,
                  //           vertical: defaultPadding
                  //       ),
                  //       backgroundColor: primaryColor,
                  //     ),
                  //     child: const Text(
                  //       "EXPLORE NOW",
                  //       style: TextStyle(color: darkColor),
                  //     )),
                ],
              ),)
          ],
        ),),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.labelLarge!,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context))
          FlutterCodedText(),
          if(!Responsive.isMobileLarge(context))
          SizedBox(width: defaultPadding / 2,),
          Text("I build "),
          AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText("Responsive web and mobile apps",
                  speed: const Duration(milliseconds: 40),
                ),
                TyperAnimatedText("e-Commerce apps",
                  speed: const Duration(milliseconds: 40),),
                TyperAnimatedText("Chat app with different themes",
                  speed: const Duration(milliseconds: 40),),
              ]),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2,),
          if(!Responsive.isMobileLarge(context))
            FlutterCodedText(),
        ],
      ),
    );
  }
}