// ignore: file_names
import 'package:flutter/material.dart';
import 'package:resume_website/models/project.dart';
import 'package:resume_website/responsive.dart';

import 'package:url_launcher/url_launcher_string.dart';
import '/constraints.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project Showcase',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
            mobile: ProjectGridview(
              crossAxisCount: 1,
            ),
            mobileLarge: ProjectGridview(
              crossAxisCount: 2,
            ),
            desktop: ProjectGridview(),
            tablet: ProjectGridview(
              childAspectRatio: 1.13,
              crossAxisCount: 2,
            ))
      ],
    );
  }
}

class ProjectGridview extends StatelessWidget {
  const ProjectGridview({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.13,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: myProjects.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) =>
            ProjectCard(project: myProjects[index]));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title!,
                style: Theme.of(context).textTheme.subtitle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                project.description!,
                style: const TextStyle(height: 1.5),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ],
          ),
          Row(
            children: [
              if (project.live != null) ...[
                TextButton(
                    onPressed: () {
                      launchUrlString(project.live!);
                    },
                    child: const Text(
                      'Live',
                      style: TextStyle(color: primaryColor),
                    )),
              ],
              if (project.repo != null) ...[
                TextButton(
                    onPressed: () {
                      launchUrlString(project.repo!);
                    },
                    child: const Text(
                      'Github',
                      style: TextStyle(color: primaryColor),
                    )),
              ]
            ],
          )
        ],
      ),
    );
  }
}
