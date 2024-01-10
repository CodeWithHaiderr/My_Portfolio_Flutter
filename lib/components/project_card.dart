

import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../models/Projects.dart';
import '../screens/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key, required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!, maxLines: 2, style: Theme.of(context).textTheme.titleSmall,overflow: TextOverflow.ellipsis,),
          const Spacer(),
          Text(project.description!, maxLines: Responsive.isMobileLarge(context) ? 3 : 4 ,overflow: TextOverflow.ellipsis,style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(onPressed: (){}, child: const Text(
            "Read More >>",
            style: TextStyle(color: primaryColor),
          ))
        ],
      ),
    );
  }
}