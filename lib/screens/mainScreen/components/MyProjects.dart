import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:fluttericon/brandico_icons.dart';

import 'package:resume_website/models/project.dart';
import 'package:resume_website/responsive.dart';

import '/constraints.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Project Showcase',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
              mobile: ProjectGridview(
                crossAxisCount: 1,
                childAspectRatio: 3 / 2.9,
              ),
              mobileLarge: ProjectGridview(
                crossAxisCount: 2,
                // childAspectRatio: 1.6,
              ),
              desktop: ProjectGridview(),
              tablet: ProjectGridview(
                childAspectRatio: 1.13,
                crossAxisCount: 3,
              ))
        ],
      ),
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
                maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              ),
            ],
          ),
          project.lang!.isEmpty
              ? const SizedBox(
                  height: 1,
                )
              : Wrap(
                  children: List.generate(
                      project.lang!.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Chip(
                                padding: const EdgeInsets.all(4),
                                avatar: Container(
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          project.lang!.values.elementAt(index),
                                        ),
                                      )),
                                ),
                                label:
                                    Text(project.lang!.keys.elementAt(index))),
                          )),
                  //[

                  // for (int i = 0; i <= project.lang!.length; i++)
                  //   {
                  //     Chip(
                  //       elevation: 1,
                  //       side: const BorderSide(
                  //         color: Colors.white,
                  //       ),
                  //       label: Text(
                  //           project.lang!.isEmpty ? '' : project.lang![i]),
                  //     ),
                  //   }

                  // ],
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
