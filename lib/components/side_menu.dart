import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/area_info_text.dart';
import 'package:portfolio/components/coding_skills.dart';
import 'package:portfolio/components/education_widget.dart';
import 'package:portfolio/components/skills.dart';
import 'package:portfolio/screens/constants.dart';

import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding:  EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "Pakistan",
                  ),
                   AreaInfoText(
                    title: "City",
                    text: "Rawalpindi",
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Text(
                          "Skills",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                   const Skills(),
                  const SizedBox(height: defaultPadding,),
                  const CodingSkills(),
                  const SizedBox(height: defaultPadding / 2,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                        child: Text("Education", style: Theme.of(context).textTheme.labelMedium,),
                      ),
                    ],
                  ),
                  const EducationWidget(text: 'Intermediate in ICS-physics'),
                  const SizedBox(height: defaultPadding / 2,),
                  const EducationWidget(text: 'BS Information Technology',),

                  const Divider(),
                  TextButton(
                      onPressed: (){},
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("DOWNLOAD CV",),
                            Icon(Icons.download,size: 20,),
                          ],
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding / 2),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/youtube.svg"),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        Spacer(),

                      ],

                    ),
                  ),

                    ],
                  ),

            ),
          ),
        ],
      ),
    );
  }
}



