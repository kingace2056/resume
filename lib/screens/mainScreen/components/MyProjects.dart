import 'package:flutter/material.dart';
import 'package:resume_website/widgets/card_cutout.dart';
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
              desktop: ProjectGridview(
                childAspectRatio: 3 / 3.3,
              ),
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
            crossAxisSpacing: defaultPadding * 3,
            mainAxisSpacing: defaultPadding),
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
                  spreadRadius: 0.5)
            ]),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 200 / 1920,
                width: MediaQuery.of(context).size.width * 170 / 1920,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Text(
                      project.description!,
                      style: const TextStyle(height: 1.5),
                      // overflow: TextOverflow.ellipsis,
                      // maxLines: Responsive.isMobileLarge(context) ? 6 : 7,
                    ),
                  ),
                ),
                const Spacer(),
                project.lang!.isEmpty
                    ? const SizedBox(
                        height: 1,
                      )
                    : Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          // physics: const NeverScrollableScrollPhysics(),
                          child: Row(
                            children: List.generate(
                                project.lang!.length,
                                (index) => Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Chip(
                                          padding: const EdgeInsets.all(4),
                                          avatar: Container(
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      project.lang!.values
                                                          .elementAt(index),
                                                      headers: {}),
                                                )),
                                          ),
                                          label: Text(project.lang!.keys
                                              .elementAt(index))),
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
                        ),
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
          ],
        ),
      ),
    );
  }
}
