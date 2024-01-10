

import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/responsive.dart';

import '../models/Projects.dart';
import '../screens/constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text("My Projects",style: Theme.of(context).textTheme.titleMedium,),
        const SizedBox(height: defaultPadding,),
        Responsive(
            mobile: ProjectGridView(crossAxisCountt: 1,childAspectRatio: 2,),
            mobileLarge: ProjectGridView(crossAxisCountt: 2,),
            tablet: ProjectGridView(childAspectRatio: 1.1,),
            desktop: ProjectGridView(),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,  this.crossAxisCountt = 3 , this.childAspectRatio = 1.3,
  });

  final int crossAxisCountt;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: my_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCountt, crossAxisSpacing: defaultPadding,mainAxisSpacing: defaultPadding,childAspectRatio: childAspectRatio),
        itemBuilder: (context,index) => ProjectCard(project: my_projects[index],
        ),
      ),
    );
  }
}
