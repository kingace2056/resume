// ignore: file_names
import 'package:flutter/material.dart';
import 'package:resume_website/models/project.dart';

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
        GridView.builder(
            itemCount: myProjects.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.3,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding),
            itemBuilder: (context, index) =>
                ProjectCard(project: myProjects[index]))
      ],
    );
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
              TextButton(
                  onPressed: () {
                    launchUrlString(project.live!);
                  },
                  child: const Text('Live')),
              if (project.repo != null) ...[
                TextButton(
                    onPressed: () {
                      launchUrlString(project.repo!);
                    },
                    child: const Text('Github')),
              ]
            ],
          )
        ],
      ),
    );
  }
}
