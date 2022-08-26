// ignore: file_names
import 'package:flutter/material.dart';
import 'package:resume_website/models/badges.dart';
import 'package:resume_website/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher_string.dart';
import '/constraints.dart';

class MyBadges extends StatelessWidget {
  const MyBadges({
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
            'Badge Showcase',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
              mobile: BadgeGridview(
                crossAxisCount: 1,
                childAspectRatio: 3 / 2.9,
              ),
              mobileLarge: BadgeGridview(
                crossAxisCount: 2,
                // childAspectRatio: 1.6,
              ),
              desktop: BadgeGridview(),
              tablet: BadgeGridview(
                childAspectRatio: 1.13,
                crossAxisCount: 3,
              ))
        ],
      ),
    );
  }
}

class BadgeGridview extends StatelessWidget {
  const BadgeGridview({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.13,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: myBadges.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => BadgeCard(Badge: myBadges[index]));
  }
}

class BadgeCard extends StatelessWidget {
  const BadgeCard({
    Key? key,
    required this.Badge,
  }) : super(key: key);
  final Badges Badge;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrlString(Badge.link!);
      },
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Badge.title!,
              style: Theme.of(context).textTheme.subtitle2,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(Badge.image!), fit: BoxFit.contain)),
              alignment: Alignment.center,
              height: defaultPadding * 8,
            )
          ],
        ),
      ),
    );
  }
}
