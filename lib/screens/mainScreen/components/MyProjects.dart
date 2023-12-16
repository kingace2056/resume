import 'package:flutter/material.dart';
import 'package:resume_website/widgets/card_cutout.dart';
import 'package:resume_website/widgets/size_config.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:fluttericon/brandico_icons.dart';

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
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('All Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: TrueSize.getWidth(context, 40),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
              mobile: ProjectGridview(
                crossAxisCount: 1,
                childAspectRatio: 387.81 / 420,
              ),
              mobileLarge: ProjectGridview(
                crossAxisCount: 2,
                // childAspectRatio: 1.6,
              ),
              desktop: ProjectGridview(
                childAspectRatio: 387.81 / 420,
                crossAxisCount: 4,
              ),
              tablet: ProjectGridview(
                childAspectRatio: 387.81 / 420,
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
    this.childAspectRatio = 387 / 420,
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
            crossAxisSpacing: TrueSize.getWidth(context, 50),
            mainAxisSpacing: TrueSize.getWidth(context, 50)),
        itemBuilder: (context, index) =>
            ProjectCard(project: myProjects[index]));
    // return Wrap(
    //   children: [
    //     for (int i = 0; i < myProjects.length; i++)
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: ProjectCard(project: myProjects[i]),
    //       )
    //   ],
    // );
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
    return AspectRatio(
      aspectRatio: 387 / 420,
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(31),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.14),
              offset: Offset.zero,
              blurRadius: 10,
              spreadRadius: 0.5,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: CustomPaint(
                painter: RPSCustomPainter(),
                child: Container(
                  width: TrueSize.getWidth(context, 175),
                  height: TrueSize.getWidth(context, 200),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: TrueSize.getWidth(context, 387 - 175),
                    child: Text(
                      project.title!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: TrueSize.getWidth(context, 40),
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        project.description!,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: TrueSize.getWidth(context, 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  if (project.lang!.isNotEmpty)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int index = 0;
                              index < project.lang!.length;
                              index++)
                            Padding(
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
                                        headers: {},
                                      ),
                                    ),
                                  ),
                                ),
                                label: Text(
                                  project.lang!.keys.elementAt(index),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  const SizedBox(
                    height: 8.0,
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
                          ),
                        ),
                      ],
                      if (project.repo != null) ...[
                        TextButton(
                          onPressed: () {
                            launchUrlString(project.repo!);
                          },
                          child: const Text(
                            'Github',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ],
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
