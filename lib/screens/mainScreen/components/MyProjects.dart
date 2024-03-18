import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume_website/utils/device_check.dart';
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
          AutoSizeText('All Projects',
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
                childAspectRatio: 387.81 / 420,
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

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 387 / 420,
      child: MouseRegion(
        onExit: (event) {
          setState(() {
            isHover = false;
          });
        },
        onHover: (event) {
          setState(() {
            isHover = true;
          });
        },
        child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 300),
          margin: DeviceCheck.isMobile(context)
              ? const EdgeInsets.symmetric(horizontal: 20)
              : isHover
                  ? const EdgeInsets.all(0)
                  : const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(31),
            boxShadow: [
              BoxShadow(
                  color: Colors.pink,
                  offset: isHover ? const Offset(4, 2) : const Offset(-4, -2),
                  blurRadius: isHover ? 20 : 10),
              BoxShadow(
                color: Colors.blue,
                offset: isHover ? const Offset(-4, -2) : const Offset(4, 2),
                // blurRadius: controller.hovers[index] ? 20 : 10,
                blurRadius: isHover ? 20 : 10,
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  child: SizedBox(
                    width: DeviceCheck.isMobile(context)
                        ? MediaQuery.of(context).size.width * 0.4
                        : DeviceCheck.isTablet(context)
                            ? MediaQuery.of(context).size.width * 0.2
                            : TrueSize.getWidth(context, 175),
                    height: DeviceCheck.isMobile(context)
                        ? MediaQuery.of(context).size.width * 0.4
                        : DeviceCheck.isTablet(context)
                            ? MediaQuery.of(context).size.width * 0.2
                            : TrueSize.getWidth(context, 200),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // width: TrueSize.getWidth(context, 387 - 175),
                      child: AutoSizeText(
                        widget.project.title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .fontSize,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        // maxLines: 2,
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: AutoSizeText(
                          widget.project.description!,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize,
                          ),
                        ),
                      ),
                    ),
                    if (widget.project.lang!.isNotEmpty)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int index = 0;
                                index < widget.project.lang!.length;
                                index++)
                              Padding(
                                padding: EdgeInsets.all(
                                    TrueSize.getWidth(context, 4.0)),
                                child: Chip(
                                  side: BorderSide.none,
                                  backgroundColor: const Color(0xFF111C44),
                                  color: MaterialStateProperty.all<Color>(
                                      const Color(0xFF111C44)),
                                  padding: EdgeInsets.all(
                                      TrueSize.getWidth(context, 4.0)),
                                  avatar: Container(
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: NetworkImage(
                                          widget.project.lang!.values
                                              .elementAt(index),
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: AutoSizeText(
                                    widget.project.lang!.keys.elementAt(index),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .fontSize! -
                                          3,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    SizedBox(
                      height: TrueSize.getWidth(context, 8),
                    ),
                    Row(
                      children: [
                        if (widget.project.live != null) ...[
                          TextButton(
                            onPressed: () {
                              launchUrlString(widget.project.live!);
                            },
                            child: const AutoSizeText(
                              'Live',
                              style: TextStyle(color: primaryColor),
                            ),
                          ),
                        ],
                        if (widget.project.repo != null) ...[
                          TextButton(
                            onPressed: () {
                              launchUrlString(widget.project.repo!);
                            },
                            child: const AutoSizeText(
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
      ),
    );
  }
}
